#!/usr/bin/env python3
"""Reorder Dart class members to satisfy solid_lints `member_ordering`.

Order (from analysis_options.yaml):
  static_getters_setters, static_fields, static_methods,
  fields, getters_setters, constructors, methods

Widget classes additionally order these methods:
  initState, didChangeDependencies, didUpdateWidget,
  build, deactivate, dispose
"""

import re
import sys
from pathlib import Path

GROUP_ORDER = [
    "static_getters_setters",
    "static_fields",
    "static_methods",
    "fields",
    "getters_setters",
    "constructors",
    "methods",
]
GROUP_RANK = {name: i for i, name in enumerate(GROUP_ORDER)}

WIDGET_METHOD_ORDER = [
    "initState",
    "didChangeDependencies",
    "didUpdateWidget",
    "build",
    "deactivate",
    "dispose",
]
WIDGET_METHOD_RANK = {name: i for i, name in enumerate(WIDGET_METHOD_ORDER)}


def mask_code(text):
    """Return a copy of `text` with comment and string-literal bodies blanked.

    Structural characters (braces, parens, semicolons) survive only when they
    are real code, so depth counting on the result is reliable.
    """
    out = list(text)
    n = len(text)

    def blank(a, b):
        for k in range(a, min(b, n)):
            if text[k] != "\n":
                out[k] = " "

    i = 0
    stack = []  # {"kind": "str", ...} or {"kind": "interp", "depth": int}
    while i < n:
        top = stack[-1] if stack else None

        if top is not None and top["kind"] == "str":
            quote, raw = top["quote"], top["raw"]
            if not raw and text.startswith("\\", i):
                blank(i, i + 2)
                i += 2
                continue
            if text.startswith(quote, i):
                blank(i, i + len(quote))
                i += len(quote)
                stack.pop()
                continue
            if not raw and text.startswith("${", i):
                blank(i, i + 2)
                i += 2
                stack.append({"kind": "interp", "depth": 1})
                continue
            if not raw and text[i] == "$":
                blank(i, i + 1)
                i += 1
                while i < n and (text[i].isalnum() or text[i] == "_"):
                    blank(i, i + 1)
                    i += 1
                continue
            blank(i, i + 1)
            i += 1
            continue

        c = text[i]
        nxt = text[i + 1] if i + 1 < n else ""
        in_interp = top is not None and top["kind"] == "interp"

        if c == "/" and nxt == "/":
            while i < n and text[i] != "\n":
                out[i] = " "
                i += 1
            continue
        if c == "/" and nxt == "*":
            depth = 0
            while i < n:
                if text.startswith("/*", i):
                    depth += 1
                    blank(i, i + 2)
                    i += 2
                elif text.startswith("*/", i):
                    depth -= 1
                    blank(i, i + 2)
                    i += 2
                    if depth == 0:
                        break
                else:
                    blank(i, i + 1)
                    i += 1
            continue
        if c in "'\"":
            raw = i > 0 and text[i - 1] == "r"
            triple = text[i : i + 3] in ("'''", '"""')
            quote = text[i : i + 3] if triple else c
            blank(i, i + len(quote))
            i += len(quote)
            stack.append({"kind": "str", "quote": quote, "raw": raw})
            continue
        if in_interp:
            if c == "{":
                top["depth"] += 1
            elif c == "}":
                top["depth"] -= 1
                if top["depth"] == 0:
                    blank(i, i + 1)
                    i += 1
                    stack.pop()
                    continue
            blank(i, i + 1)
            i += 1
            continue
        i += 1
    return "".join(out)


def find_type_bodies(text, code):
    """Yield (kind, header_start, body_open, body_close) for top-level types."""
    bodies = []
    for m in re.finditer(r"\b(class|mixin|enum|extension)\b", code):
        # Only top-level declarations (not nested inside another body).
        if any(o < m.start() < c for _, _, o, c in bodies):
            continue
        open_idx = code.find("{", m.end())
        if open_idx == -1:
            continue
        # A `;` before the brace means this was a forward/abstract declaration.
        if ";" in code[m.end() : open_idx]:
            continue
        depth, j = 0, open_idx
        while j < len(code):
            if code[j] == "{":
                depth += 1
            elif code[j] == "}":
                depth -= 1
                if depth == 0:
                    break
            j += 1
        if depth != 0:
            continue
        bodies.append((m.group(1), m.start(), open_idx, j))
    return bodies


EXPRESSION_KEYWORDS = {"const", "return", "new", "yield", "await", "throw"}


def is_expression_brace(code, pos, start, saw_assign, ctor_colon):
    """Decide whether the `{` at `pos` opens a block body or a literal/closure.

    Judged from the token immediately before it: `= {`, `=> {` and `const {}`
    are values, while `) {` and `name {` open real bodies. A constructor
    initializer list holds an `=` yet still ends in a body, so it only counts
    as a value context when there is no initializer colon.
    """
    k = pos - 1
    while k >= start and code[k] in " \t\r\n":
        k -= 1
    if k < start:
        return False
    prev = code[k]
    if prev in "=,([:?!+-*/&|>~%^":
        return True
    if prev.isalnum() or prev == "_":
        end = k + 1
        while k >= start and (code[k].isalnum() or code[k] == "_"):
            k -= 1
        if code[k + 1 : end] in EXPRESSION_KEYWORDS:
            return True
    return saw_assign and not ctor_colon


def split_members(text, code, start, end):
    """Split a class body [start, end) into member source ranges."""
    members = []
    i = start
    while i < end:
        while i < end and code[i] in " \t\r\n":
            i += 1
        if i >= end:
            break
        member_start = i
        depth = 0
        saw_assign = False
        ctor_colon = False
        j = i
        while j < end:
            ch = code[j]
            if ch in "([":
                depth += 1
            elif ch in ")]":
                depth -= 1
            elif ch == "{":
                if depth == 0 and not is_expression_brace(
                    code, j, start, saw_assign, ctor_colon
                ):
                    # A real body: consume the whole block, member ends with it.
                    d = 0
                    while j < end:
                        if code[j] == "{":
                            d += 1
                        elif code[j] == "}":
                            d -= 1
                            if d == 0:
                                break
                        j += 1
                    break
                depth += 1
            elif ch == "}":
                depth -= 1
            elif ch == ";" and depth == 0:
                break
            elif depth == 0:
                if code.startswith("=>", j):
                    saw_assign = True
                elif (
                    ch == "="
                    and not code.startswith("==", j)
                    and j > start
                    and code[j - 1] not in "=!<>"
                ):
                    saw_assign = True
                elif ch == ":":
                    k = j - 1
                    while k > start and code[k] in " \t\r\n":
                        k -= 1
                    if code[k] == ")":
                        ctor_colon = True
            j += 1
        member_end = min(j + 1, end)
        # A block body followed by a stray `;` belongs to the same member.
        if text[member_start:member_end].strip() in (";", "") and members:
            members[-1] = (members[-1][0], member_end)
        else:
            members.append((member_start, member_end))
        i = member_end
    return members


def attach_trivia(text, spans, body_start):
    """Widen each member span to absorb the comments directly above it.

    Comments separated from the member by a blank line are treated as
    detached and stay with the preceding member's gap instead.
    """
    result = []
    prev_end = body_start
    for code_start, member_end in spans:
        trivia = text[prev_end:code_start]
        last_blank = None
        for match in re.finditer(r"\n[ \t]*\n", trivia):
            last_blank = match
        if last_blank is not None:
            offset = last_blank.end()
        else:
            offset = trivia.index("\n") + 1 if "\n" in trivia else 0
        attached = text[prev_end + offset : code_start]
        start = prev_end + offset + (len(attached) - len(attached.lstrip()))
        result.append((start, member_end, last_blank is not None, code_start))
        prev_end = member_end
    return result


def classify(src, class_name):
    """Return (group, method_name) for a member's source text."""
    code = mask_code(src)
    # Drop annotations and leading comments so keywords are at the front.
    stripped = re.sub(r"^\s*@\s*\w+(\s*\([^)]*\))?", "", code, flags=re.MULTILINE)
    stripped = stripped.strip()

    is_static = re.match(r"^(static)\b", stripped) is not None

    # Locate the first structural token that ends the declaration header.
    header_end = len(stripped)
    depth = 0
    arrow = eq = paren = -1
    for idx, ch in enumerate(stripped):
        if ch in "([{":
            if ch == "(" and depth == 0 and paren == -1:
                paren = idx
            depth += 1
        elif ch in ")]}":
            depth -= 1
        elif depth == 0:
            if stripped.startswith("=>", idx) and arrow == -1:
                arrow = idx
            elif (
                ch == "="
                and eq == -1
                and not stripped.startswith("=>", idx)
                and not stripped.startswith("==", idx)
                and idx > 0
                and stripped[idx - 1] not in "=!<>"
            ):
                eq = idx
    ends = [p for p in (arrow, eq, paren) if p != -1]
    header_end = min(ends) if ends else header_end
    header = stripped[:header_end]

    ctor = re.match(
        r"^(?:const\s+|factory\s+|external\s+)*" + re.escape(class_name) + r"\b\s*(?:\.\s*\w+\s*)?$",
        header.strip(),
    )
    if ctor and paren != -1:
        return ("constructors", None)

    if re.search(r"\bget\b", header):
        return ("static_getters_setters" if is_static else "getters_setters", None)
    if re.search(r"\bset\b", header) and paren != -1:
        return ("static_getters_setters" if is_static else "getters_setters", None)

    if paren != -1 and (eq == -1 or paren < eq):
        # Distinguish `void Function() cb;` (a field) from a real method: a
        # method's parameter list is followed by a body or terminator.
        close = paren
        depth = 0
        for idx in range(paren, len(stripped)):
            if stripped[idx] == "(":
                depth += 1
            elif stripped[idx] == ")":
                depth -= 1
                if depth == 0:
                    close = idx
                    break
        after = stripped[close + 1 :].lstrip()
        if not re.match(r"^[A-Za-z_$]", after) or re.match(
            r"^(async|sync)\b", after
        ):
            name = re.findall(r"([A-Za-z_$][\w$]*)\s*$", header)
            return (
                "static_methods" if is_static else "methods",
                name[0] if name else None,
            )

    return ("static_fields" if is_static else "fields", None)


def is_widget_class(header):
    return re.search(r"\b(State<|StatelessWidget|StatefulWidget)\b", header) is not None


def process(path):
    with open(path, newline="") as fh:
        raw = fh.read()
    # Work in "\n" internally, but keep the file's own line endings on write.
    crlf = "\r\n" in raw
    text = raw.replace("\r\n", "\n") if crlf else raw
    code = mask_code(text)
    edits = []

    for kind, header_start, open_idx, close_idx in find_type_bodies(text, code):
        header = text[header_start:open_idx]
        name_m = re.search(
            r"\b(?:class|mixin|enum|extension)\s+([A-Za-z_$][\w$]*)", header
        )
        class_name = name_m.group(1) if name_m else ""

        body_start = open_idx + 1
        if kind == "enum":
            # Enum constants must stay first; only reorder what follows them.
            depth = 0
            semi = -1
            for idx in range(body_start, close_idx):
                ch = code[idx]
                if ch in "([{":
                    depth += 1
                elif ch in ")]}":
                    depth -= 1
                elif ch == ";" and depth == 0:
                    semi = idx
                    break
            if semi == -1:
                continue
            body_start = semi + 1
        if kind == "extension":
            continue

        spans = split_members(text, code, body_start, close_idx)
        if len(spans) < 2:
            continue

        widget = is_widget_class(header)
        members = []
        for s, e, gap, code_start in attach_trivia(text, spans, body_start):
            group, method = classify(text[code_start:e], class_name)
            members.append(
                {
                    "src": text[s:e],
                    "group": group,
                    "method": method,
                    "gap": gap,
                }
            )

        def sort_key(item):
            i, m = item
            sub = 0
            if widget and m["group"] == "methods" and m["method"] in WIDGET_METHOD_RANK:
                sub = WIDGET_METHOD_RANK[m["method"]] - len(WIDGET_METHOD_ORDER)
            return (GROUP_RANK[m["group"]], sub, i)

        ordered = [m for _, m in sorted(enumerate(members), key=sort_key)]
        if ordered == members:
            continue

        pieces = []
        for idx, m in enumerate(ordered):
            if idx > 0:
                pieces.append("\n\n" if m["gap"] else "\n")
            pieces.append(m["src"])
        # Members were sliced without their leading indent; restore it.
        new_body = "\n" + "\n".join(
            ("  " + ln if ln.strip() and not ln.startswith("  ") else ln)
            for ln in "".join(pieces).splitlines()
        ) + "\n"
        edits.append((body_start, close_idx, new_body))

    if not edits:
        return False

    original = text
    for start, end, replacement in sorted(edits, reverse=True):
        text = text[:start] + replacement + text[end:]

    # Reordering must never add, drop, or alter a line of code.
    def fingerprint(src):
        return sorted(line.strip() for line in src.splitlines() if line.strip())

    if fingerprint(original) != fingerprint(text):
        raise ValueError("refusing to write: not a pure permutation of source lines")

    with open(path, "w", newline="") as fh:
        fh.write(text.replace("\n", "\r\n") if crlf else text)
    return True


def main():
    root = Path(sys.argv[1] if len(sys.argv) > 1 else "lib")
    changed = []
    for path in sorted(root.rglob("*.dart")):
        p = str(path)
        if ".g.dart" in p or ".freezed.dart" in p or "__generated__" in p:
            continue
        try:
            if process(path):
                changed.append(p)
        except Exception as exc:  # noqa: BLE001
            print(f"ERROR {p}: {exc}", file=sys.stderr)
    print(f"rewrote {len(changed)} files")
    for c in changed:
        print("  " + c)


if __name__ == "__main__":
    main()
