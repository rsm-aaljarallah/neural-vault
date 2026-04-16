# The Neural Vault

> *"The vault you build today is the training set for the model you run tomorrow."*

A structured Obsidian vault that works alongside Claude's native memory to give you persistent, portable, project-specific context across every AI session. No vector database. No infrastructure. Just markdown files, a disciplined workflow, and a few shell scripts.

---

## What Problem Does This Solve?

Every AI session starts cold. You spend the first ten minutes re-explaining who you are, what you're working on, and what you decided last time. Nothing accumulates. Nothing compounds.

The Neural Vault fixes that with a **three-layer memory system**:

| Layer | What it is | What it does |
|---|---|---|
| `About_Me.md` | Your static briefing file | Tells the AI who you are at the start of every session |
| Obsidian Wiki | Your structured knowledge base | Stores everything you've learned and decided |
| Context Injection Protocol | A prompt template | Loads your vault into an active Claude session in seconds |

---

## Quick Start (5 Minutes)

### 1. Install Obsidian
Download free at [obsidian.md](https://obsidian.md). Open it and create a new vault.

### 2. Set Up the Folder Structure
Create these folders inside your vault:

```
00_Inbox/
01_Wiki/
02_Meta/
03_Archive/
04_Agent_Sandbox/
```

### 3. Fill In Your `About_Me.md`
Copy the template from [`templates/About_Me_template.md`](templates/About_Me_template.md) into your `02_Meta/` folder and fill it in. This is the file you'll paste into Claude at the start of every session.

### 4. Use the Context Injection Protocol
At the start of every Claude session, paste the contents of [`templates/context_injection_prompt.md`](templates/context_injection_prompt.md) followed by your relevant wiki notes.

### 5. (Optional) Set Up Auto-Save
Run the auto-save daemon so every file change is silently committed to git. See [`scripts/vault-autosave.sh`](scripts/vault-autosave.sh).

---

## Repo Structure

```
neural-vault/
├── README.md                        ← You are here
├── neural_vault.qmd                 ← Full presentation (Quarto source)
├── neural_vault.html                ← Rendered Reveal.js presentation
├── style2.css                       ← Presentation stylesheet
├── templates/
│   ├── About_Me_template.md         ← Fill this in and paste it into Claude
│   └── context_injection_prompt.md  ← The session-start prompt template
├── scripts/
│   └── vault-autosave.sh            ← Auto-save daemon (macOS launchd)
└── vault-structure/
    └── folder_guide.md              ← What goes in each folder
```

---

## The Daily Habit

```
Session Start  →  Paste About_Me + relevant wiki notes into Claude
During Work    →  Claude flags insights with COMMIT: 
Session End    →  Save flagged insights as new wiki notes (5 min)
Weekly         →  Paste Index.md into Claude → find gaps and contradictions
```

---

## Attribution

This system is a hybrid of independent work and community contributions:

- **Andrej Karpathy** — the raw → wiki ingestion pipeline, LLM-as-librarian framing, health checks
- **Abdullah (this repo)** — two-layer memory split, Context Injection Protocol, `COMMIT:` flag, auto-save daemon, Meta/ control layer
- **Community (Steph Ango et al.)** — Agent Sandbox pattern, git versioning, Dataview frontmatter

---

## The Presentation

The full Reveal.js presentation is included in this repo. To re-render it:

```bash
# Install Quarto: https://quarto.org
quarto render neural_vault.qmd
```

---

*Built by [Abdullah](https://github.com/rsm-aaljarallah)*
