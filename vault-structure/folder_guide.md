# Vault Folder Structure Guide

This is the recommended folder structure for the Neural Vault. Create these folders inside your Obsidian vault.

---

## `00_Inbox/`

**Purpose**: Raw capture. Dump everything here first.

- Quick thoughts, half-formed ideas, web clips, meeting notes
- Nothing in Inbox is "finished" — it's a staging area
- Process Inbox weekly: promote to Wiki, archive, or delete

---

## `01_Wiki/`

**Purpose**: Your structured knowledge base. The brain of the vault.

- One note per concept, project, person, or decision
- The LLM writes first drafts; you curate and correct
- Use `[[wikilinks]]` to connect related notes
- Add YAML frontmatter for Dataview dashboards (optional)

**Example notes**: `Project_X_Architecture.md`, `Decision_Log_Q1.md`, `Python_Patterns.md`

---

## `02_Meta/`

**Purpose**: The control layer. Files that manage the vault itself.

| File | What it is |
|---|---|
| `About_Me.md` | Your static briefing file — paste into Claude every session |
| `Index.md` | A running list of all wiki notes with one-line summaries |
| `Session_Log.md` | One line per session: date, topic, key outcome |
| `Prompts.md` | Your saved prompt templates for common tasks |

---

## `03_Archive/`

**Purpose**: Deprecated notes. Kept for history, not for active use.

- Move notes here when they're no longer relevant
- Never delete — you may need the history
- The auto-save daemon versions everything anyway

---

## `04_Agent_Sandbox/`

**Purpose**: A messy workspace for AI agents.

- Let Claude or other agents write freely here without polluting your wiki
- Only promote distilled, high-quality artifacts to `01_Wiki/`
- Inspired by Steph Ango's (Obsidian co-creator) recommendation to keep agent output separate

---

## Suggested Starting Notes

When you first set up your vault, create these notes in `01_Wiki/`:

1. `Current_Projects.md` — what you're actively working on
2. `Decisions.md` — important decisions you've made and why
3. `Resources.md` — tools, links, and references you return to often
4. `People.md` — key people in your work and their context
