## LLM wiki

My knowledge base is the Obsidian vault at `C:\Users\mmatokovic\Documents\llm-wiki`.

- Before researching a concept, tool or past decision, search the wiki first:
  `python C:\Users\mmatokovic\Documents\llm-wiki\.claude\skills\wiki\scripts\search.py "<query>"`
- When a session produces something worth keeping (a decision, a gotcha, how a system works, a fix
  that took real effort), or I say "save what we learned", write a short note to
  `raw/notes/YYYY-MM-DD-<slug>.md` in the vault: what, why, and which project it came from.
- Outside the vault, never edit `wiki/` or other `raw/` folders; notes get ingested in the vault.

## Language
- Code, comments, commit messages and PR comments are in English.
- When I write in Croatian, reply in Croatian. Give plain answers, not numbered question lists, and make it clear when you are asking me something versus recommending.

## Git commits
- Commit messages are a single title line only: no body, and no Co-Authored-By or Claude/Generated-with attribution.
- Never put a branch prefix like '[main]' in commit messages.
- Do not push or force-push unless explicitly asked.