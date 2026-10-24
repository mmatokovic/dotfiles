## LLM wiki

My knowledge base is the Obsidian vault at `C:\Users\mmatokovic\Documents\llm-wiki`.

- Before researching a concept, tool or past decision, search the wiki first:
  `python C:\Users\mmatokovic\Documents\llm-wiki\.claude\skills\wiki\scripts\search.py "<query>"`
  Then append one entry to the vault's `wiki/log.md`: `## [YYYY-MM-DD] query | <question>` with
  `- project:`, `- read:` (pages opened) and `- used:` (pages that helped, or "none — gap").
- When a session produces something significant, or I say "save what we learned", write a note to
  `outputs/notes/YYYY-MM-DD-<slug>.md` in the vault (frontmatter `type: output`, `title`, `created`,
  `project`, `filed: false`). Keep only what I'd need to pick the work up again:
  **Decision** (what, who, when), **Why**, **Passed over** (alternatives and why not),
  **Open questions** (with owner), **Status**. Skip anything that fails that test.
- Never write to the vault's `raw/` (mine only). Outside the vault, the only `wiki/` edit allowed is
  appending to `wiki/log.md`; notes get filed into the wiki in the vault.

## Language
- Code, comments, commit messages and PR comments are in English.
- When I write in Croatian, reply in Croatian. Give plain answers, not numbered question lists, and make it clear when you are asking me something versus recommending.

## Git commits
- Commit messages are a single title line only: no body, and no Co-Authored-By or Claude/Generated-with attribution.
- Never put a branch prefix like '[main]' in commit messages.
- Do not push or force-push unless explicitly asked.