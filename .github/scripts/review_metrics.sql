-- Review-health metrics over a SQLite dump of PR review data with tables
-- prs(number, title, state, author, …), threads(id, pr, path, line, is_resolved, is_outdated, resolved_by, n_comments),
-- thread_comments(thread, pr, seq, author, body, created_at, url), reviews(pr, author, state, body, submitted_at)
-- and issue_comments(pr, author, body, created_at).
-- Run: sqlite3 -header -column reviews.sqlite < .github/scripts/review_metrics.sql
-- Rerun after every few weeks of REVIEW.md or .coderabbit.yaml changes and compare.

.print '== Inline threads by reviewer, across every dumped PR =='
select c.author opened_by, count(*) threads, count(distinct t.pr) prs, min(t.pr) first_pr, max(t.pr) last_pr
from threads t
join thread_comments c on c.thread = t.id and c.seq = 0
group by 1
order by 2 desc;

.print '== CodeRabbit reviews per PR (rounds to converge) =='
with r as (select pr, count(*) n from reviews where author = 'coderabbitai' group by pr)
select count(*) prs,
       round(avg(n), 2) mean_reviews,
       sum(n = 1) one_review,
       sum(n >= 3) three_or_more,
       sum(n >= 5) five_or_more
from r;

.print '== Inline threads by who opened them, PRs CodeRabbit reviewed =='
select c.author opened_by, count(*) threads, count(distinct t.pr) prs,
       round(1.0 * count(*) / (select count(distinct pr) from reviews where author = 'coderabbitai'), 2) per_reviewed_pr
from threads t
join thread_comments c on c.thread = t.id and c.seq = 0
where t.pr in (select pr from reviews where author = 'coderabbitai')
group by 1;

.print '== CodeRabbit inline findings by severity =='
select case
         when body like '%🔴 Critical%' then 'Critical'
         when body like '%🟠 Major%' then 'Major'
         when body like '%🟡 Minor%' then 'Minor'
         when body like '%🔵 Trivial%' then 'Trivial'
         else 'untagged'
       end severity,
       count(*) findings
from thread_comments
where author = 'coderabbitai' and seq = 0
group by 1
order by 2 desc;

.print '== CodeRabbit findings the author answered, and how they ended =='
select case
         when exists (select 1 from thread_comments r where r.thread = t.id and r.author = 'coderabbitai' and r.seq > 0
                      and (r.body like '%withdraw%' or r.body like '%does not apply%' or r.body like '%won’t press%'
                           or r.body like '%No change is needed%' or r.body like '%No gateway change%'))
           then 'withdrawn or decline accepted'
         else 'kept, fixed, or still discussed'
       end outcome,
       count(*) threads
from threads t
join thread_comments c on c.thread = t.id and c.seq = 0 and c.author = 'coderabbitai'
where t.n_comments > 1
group by 1;

.print '== Where human-opened threads land =='
select case
         when t.path like 'client/test/%' then 'client tests'
         when t.path like 'client/lib/%' then 'client lib'
         when t.path like 'server/hasura/%' then 'hasura'
         when t.path like '.github/%' then 'ci'
         else 'other'
       end area,
       count(*) threads
from threads t
join thread_comments c on c.thread = t.id and c.seq = 0 and c.author = 'Andrew-Bekhiet'
group by 1
order by 2 desc;

.print '== Manual @coderabbitai triggers (review / resume / full review) =='
select case
         when body like '@coderabbitai resume%' then 'resume'
         when body like '@coderabbitai full review%' then 'full review'
         when body like '@coderabbitai review%' then 'review'
       end command,
       count(*) times
from issue_comments
where author = 'Andrew-Bekhiet' and body like '@coderabbitai %'
group by 1
having command is not null;
