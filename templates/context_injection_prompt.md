# Context Injection Protocol

> Paste this at the start of every Claude session, followed by your About_Me.md and any relevant wiki notes.

---

## Session Start Prompt

```
You are my thinking partner and knowledge collaborator. Before we begin, I am going to give you my context file and relevant notes from my knowledge vault. Please:

1. Read everything carefully before responding.
2. Confirm you have understood my background, current projects, and working style.
3. Do not repeat my context back to me verbatim — just confirm you have it.
4. For the rest of this session, operate with full awareness of this context.

During our session:
- If you surface an insight, decision, or piece of knowledge worth keeping permanently, flag it with: COMMIT: [brief description]
- Keep your answers direct and specific to my context.
- If something contradicts what I've told you about myself or my work, flag it.

Here is my context:

---
[PASTE About_Me.md HERE]
---

[PASTE RELEVANT WIKI NOTES HERE — only the notes relevant to today's work]
---

Ready. What are we working on today?
```

---

## Session End Checklist

At the end of every session, do the following (takes 5 minutes):

1. **Save new wiki notes**: For every `COMMIT:` flag Claude left, create or update a note in `01_Wiki/`.
2. **Log the session**: Add one line to `02_Meta/Session_Log.md` — date, topic, key outcome.
3. **Update the Index**: If you created a new wiki note, add it to `02_Meta/Index.md`.

---

## Weekly Health Check Prompt

Once a week, paste this into Claude along with your `Index.md`:

```
Here is my vault index. Please review it and tell me:
1. Are there any contradictions between notes?
2. Are there topics I reference often but haven't written a proper note for?
3. Are there notes that look stale or that I should consider archiving?
4. What connections between notes am I missing?

[PASTE Index.md HERE]
```
