"""Dump PR review threads, reviews and comments for a PR range into SQLite.

Usage: python3 -I .github/scripts/dump_pr_reviews.py OUT_DIR FIRST_PR LAST_PR
Rerunnable: PRs already dumped to OUT_DIR/raw/<n>.json are skipped.
"""

import json
import sqlite3
import subprocess
import sys
from pathlib import Path

OWNER, REPO = "Andrew-Bekhiet", "church_admin"

QUERY = """
query($owner:String!, $repo:String!, $n:Int!, $threads:String, $reviews:String, $comments:String) {
  repository(owner:$owner, name:$repo) {
    pullRequest(number:$n) {
      number title state createdAt mergedAt additions deletions changedFiles
      author { login }
      headRefName baseRefName
      reviewThreads(first:100, after:$threads) {
        pageInfo { hasNextPage endCursor }
        nodes {
          isResolved isOutdated path line originalLine
          resolvedBy { login }
          comments(first:50) { nodes { author { login } body createdAt url } }
        }
      }
      reviews(first:100, after:$reviews) {
        pageInfo { hasNextPage endCursor }
        nodes { author { login } state body submittedAt }
      }
      comments(first:100, after:$comments) {
        pageInfo { hasNextPage endCursor }
        nodes { author { login } body createdAt }
      }
    }
  }
}
"""


def gql(n, threads=None, reviews=None, comments=None):
    args = ["gh", "api", "graphql", "-f", f"query={QUERY}",
            "-F", f"owner={OWNER}", "-F", f"repo={REPO}", "-F", f"n={n}"]
    for name, cursor in (("threads", threads), ("reviews", reviews), ("comments", comments)):
        if cursor:
            args += ["-f", f"{name}={cursor}"]
    out = subprocess.run(args, capture_output=True, text=True)
    if out.returncode != 0:
        return None, out.stderr
    return json.loads(out.stdout)["data"]["repository"]["pullRequest"], None


def fetch_pr(n):
    pr, err = gql(n)
    if pr is None:
        return None, err
    for key, conn in (("threads", "reviewThreads"), ("reviews", "reviews"), ("comments", "comments")):
        page = pr[conn]["pageInfo"]
        while page["hasNextPage"]:
            more, err = gql(n, **{key: page["endCursor"]})
            if more is None:
                return None, err
            pr[conn]["nodes"] += more[conn]["nodes"]
            page = more[conn]["pageInfo"]
    return pr, None


def login(node):
    return (node.get("author") or {}).get("login") or "ghost"


def build_db(raw_dir, db_path):
    db_path.unlink(missing_ok=True)
    db = sqlite3.connect(db_path)
    db.executescript("""
      create table prs(number int primary key, title, state, author, created_at, merged_at,
                       additions int, deletions int, changed_files int, head, base);
      create table threads(id integer primary key, pr int, path, line int, is_resolved int,
                           is_outdated int, resolved_by, n_comments int);
      create table thread_comments(thread int, pr int, seq int, author, body, created_at, url);
      create table reviews(pr int, author, state, body, submitted_at);
      create table issue_comments(pr int, author, body, created_at);
    """)
    for f in sorted(raw_dir.glob("*.json"), key=lambda p: int(p.stem)):
        pr = json.loads(f.read_text())
        db.execute("insert into prs values (?,?,?,?,?,?,?,?,?,?,?)", (
            pr["number"], pr["title"], pr["state"], login(pr), pr["createdAt"], pr["mergedAt"],
            pr["additions"], pr["deletions"], pr["changedFiles"], pr["headRefName"], pr["baseRefName"]))
        for t in pr["reviewThreads"]["nodes"]:
            cs = t["comments"]["nodes"]
            cur = db.execute(
                "insert into threads(pr,path,line,is_resolved,is_outdated,resolved_by,n_comments) values (?,?,?,?,?,?,?)",
                (pr["number"], t["path"], t["line"] or t["originalLine"], t["isResolved"], t["isOutdated"],
                 (t.get("resolvedBy") or {}).get("login"), len(cs)))
            for i, c in enumerate(cs):
                db.execute("insert into thread_comments values (?,?,?,?,?,?,?)",
                           (cur.lastrowid, pr["number"], i, login(c), c["body"], c["createdAt"], c["url"]))
        for r in pr["reviews"]["nodes"]:
            db.execute("insert into reviews values (?,?,?,?,?)",
                       (pr["number"], login(r), r["state"], r["body"], r["submittedAt"]))
        for c in pr["comments"]["nodes"]:
            db.execute("insert into issue_comments values (?,?,?,?)",
                       (pr["number"], login(c), c["body"], c["createdAt"]))
    db.commit()
    return db


def main():
    out_dir, first, last = Path(sys.argv[1]), int(sys.argv[2]), int(sys.argv[3])
    raw_dir = out_dir / "raw"
    raw_dir.mkdir(parents=True, exist_ok=True)
    for n in range(first, last + 1):
        target = raw_dir / f"{n}.json"
        if target.exists():
            continue
        pr, err = fetch_pr(n)
        if pr is None:
            print(f"#{n}: skipped ({err.strip().splitlines()[-1] if err else 'not a PR'})", file=sys.stderr)
            continue
        target.write_text(json.dumps(pr))
        print(f"#{n}: {len(pr['reviewThreads']['nodes'])} threads", file=sys.stderr)
    db = build_db(raw_dir, out_dir / "reviews.sqlite")
    for table in ("prs", "threads", "thread_comments", "reviews", "issue_comments"):
        print(table, db.execute(f"select count(*) from {table}").fetchone()[0])


if __name__ == "__main__":
    main()
