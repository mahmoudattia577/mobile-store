# Rules for Antigravity Agent

## Context Management
- ALWAYS read GEMINI.md and .antigravityignore before starting any task.
- When a user asks for a change in a specific file, ONLY read that file and its direct dependencies.
- Do NOT re-read the entire project unless the user explicitly asks for a full review.
- Use `grep_search` or `find_by_name` to locate relevant code before reading full files.

## File Mutation
- All file edits MUST go through native tools (`replace_file_content` or `write_to_file`).
- Do NOT use `sed`, `awk`, or `perl` for file modifications.

## Verification
- After any code change, run the local test command to verify.