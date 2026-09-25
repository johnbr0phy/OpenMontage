# Decision log: test (Cass Varro)

- **Pipeline:** cinematic. The brief was complete, so research and proposal were kept short.
- **Budget:** $5 cap (user raised it from $3). No more gate stops; the user said "just do it".
- **Reference sheet:** seedream_image (fal, Seedream v5, 16:9 2K), one four-panel image. $0.135. Accepted.
- **Video:** seedance_video 2.5 standard, reference_to_video, 480p, 5s, chosen by the user. The live fal price is $0.0214 per 1k tokens, about $1.03 per clip.
- **BLOCKER (clip a_cockpit t1):** fal returned 422 content_policy_violation, reason partner_validation_failed: "images ... may contain likenesses of real people". ByteDance's filter rejects photoreal face references, even of a fictional AI-generated character. No video was produced. Stopped to ask the user before switching provider, per the AGENT_GUIDE rule against unilateral substitutions.
- **Retry (a_cockpit t2):** sent only the three-quarter face plate and the face-free body plate. Rejected with the same error. Confirmed: the detector flags the photoreal face itself. Asked the user to choose MiniMax H3 or Gemini Omni. Confirmed spend is still $0.135.
- **User decision:** "just build me a test in seedance". Switched to text-described face plus the face-free outfit plate (@Image1), and one 15s multi-shot generation (480p) instead of 3 separate clips, so identity carries across the cuts. Est. $3.08. Succeeded, with cuts at 5.2s and 9.8s.
- **Score:** pixabay_music "ambient synth space" (leberch, Pixabay license, free). Mixed with Seedance's own sound effects at low level. Final: lanczos upscale to 1080p, light teal/orange grade, film grain, vignette, loudnorm to -16 LUFS.
- **Face ratings (vs sheet / within video):** cockpit 4/8, docking 3/5, bar 3/6. See review/contact_sheet.md.
