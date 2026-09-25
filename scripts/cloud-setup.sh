#!/usr/bin/env bash
# SessionStart hook: installs OpenMontage deps in Claude Code cloud sessions.
# Skips anything already installed, so repeat sessions start fast.
set -e

# Only run in cloud sessions (phone/web). Local machines are left alone.
[ "$CLAUDE_CODE_REMOTE" = "true" ] || exit 0

cd "$CLAUDE_PROJECT_DIR"

# FFmpeg
if ! command -v ffmpeg >/dev/null 2>&1; then
  (sudo apt-get update -qq && sudo apt-get install -y -qq ffmpeg) >/dev/null 2>&1 || \
    echo "WARN: ffmpeg install failed"
fi

# Python deps
if [ ! -d .venv ]; then
  python3 -m venv .venv
  .venv/bin/pip install -q -r requirements.txt piper-tts
fi

# Remotion deps
if [ ! -d remotion-composer/node_modules ]; then
  (cd remotion-composer && npm install --silent)
fi

# .env placeholder (real keys come from the cloud environment's variables)
[ -f .env ] || cp .env.example .env

echo "OpenMontage ready. Activate with: source .venv/bin/activate"
