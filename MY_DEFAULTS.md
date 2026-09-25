# John's defaults (read on every session)

## Always
- All video work goes through OpenMontage pipelines. Follow AGENT_GUIDE.md. Never improvise a pipeline.
- My productions live in `projects/<name>/`. Check there first before starting anything new.
- Activate the venv before running tools: `source .venv/bin/activate`.

## Budget
- Budget mode: cap. Total cap per session: $10 unless I say otherwise.
- Estimate cost before any generation step. Stop and ask before exceeding the cap.

## Working from my phone
- Backlot can't be opened remotely. At each approval gate, post a short summary in chat
  (scene, prompt, cost, one-line judgement) and commit a contact sheet HTML to
  `projects/<name>/review/` so I can view it on GitHub.
- Keep chat updates short. Lead with what needs my decision.
- Commit and push work at every approved gate so nothing is lost if the session ends.

## Character consistency
- For any recurring character, build a reference sheet first and use reference-image
  video generation for every shot they appear in.
- After each batch, check faces against the reference sheet and flag drift before moving on.
