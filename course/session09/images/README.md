# Session 9 screenshot sources

Official Posit documentation screenshots, downloaded unchanged on October 21,
2026. Credit: Posit Software, PBC. These are documentation examples, not captures
of the student's installed version. Their layouts and version numbers may differ.

- `positron-layout.jpeg`: https://positron.posit.co/images/user-interface-for-rstudio-migration.jpeg
  from https://positron.posit.co/layout.html
- `rstudio-positron-comparison.jpeg`: https://positron.posit.co/images/user-interface-rstudio-vs-positron.jpeg
  from https://positron.posit.co/migrate-rstudio.html

The lecture retains the original annotations and proportions. Source links also
appear beside the screenshots and in the instructor notes.

The six panel-detail slides use CSS viewports to magnify selected regions of
`positron-layout.jpeg`. They do not alter the image or fabricate UI contents.
The Outline/Timeline headers are collapsed in the source image. Descriptions of
hidden views are identified as explanations rather than visible screenshot text.

## Marketplace screenshots

Public website captures from October 21, 2026:

- `vscode-marketplace.png`: https://marketplace.visualstudio.com/vscode
  (Microsoft Visual Studio Marketplace, Visual Studio Code catalog).
- `open-vsx-marketplace.png`: https://open-vsx.org/
  (Eclipse Foundation Open VSX Registry).

Listings, versions, and download counts change over time. The slides show these
catalogs for orientation, without implying that every listed extension works
in Positron or is recommended for the course.

## AI introduction screenshots

Official screenshots downloaded unchanged on October 21, 2026:

- `posit-assistant.png`: https://positron.posit.co/images/tutorial-python-ai-assistant.png
- `ai-provider-configuration.png`: https://positron.posit.co/images/tutorial-python-ai-configure-model.png
  Both appear in https://positron.posit.co/tutorial-ai-notebooks.html and are
  credited to Posit. The provider image selects Posit AI, with Copilot partly
  offscreen. The slides explicitly explain this state.
- `copilot-next-edit.png`: https://docs.github.com/assets/cb-39261/images/help/copilot/vsc-advanced-code-completion-menu.png
  From https://docs.github.com/en/copilot/how-tos/get-code-suggestions/get-ide-code-suggestions,
  credited to GitHub. It shows a Next Edit Suggestion in VS Code using Java,
  rather than an R ghost-text completion in Positron.

## Three forms of assistance

Official images downloaded unchanged on October 21, 2026:

- `copilot-ghost-text.png`: https://code.visualstudio.com/assets/docs/editing/inline-suggestions/js-suggest.png
  Microsoft documentation: https://code.visualstudio.com/docs/editing/ai-powered-suggestions.
  JavaScript ghost text in VS Code, clearly labeled as an interface example.
- `assistant-chat-context.webp`: https://assistant.posit.co/docs/_astro/chat-at-mention.CpX0MISi_1fpwFR.webp
  Posit documentation: https://assistant.posit.co/docs/features/chat-features/.
  The @ file menu uses example file names and a Posit AI model.
- `assistant-agent-plan.webp`: https://assistant.posit.co/docs/_astro/plan-mode-exit.D41z0wQ5_ZxVlQG.webp
  Posit documentation: https://assistant.posit.co/docs/features/plan-mode/.
  The pictured plan concerns penguin data; it is not a plan generated for our synthetic records.
- `assistant-tool-confirmation.webp`: https://assistant.posit.co/docs/_astro/tool-confirmation.CMihJ6D8_Z1S5J9m.webp
  Posit documentation: https://assistant.posit.co/docs/features/permissions/.
  Shows an edit to spin.R and approval scopes. The open menu covers part of the diff.

The slides pair these authentic interface screenshots with separately labeled,
instructor-prepared R prompts and reference code. The images do not depict a live
execution of the course examples.

## Prepared SBP reference plot

sbp-reference.png was generated on October 25, 2026 with R and ggplot2 using
starter/sbp-reference.R and starter/sbp-demo.csv. The CSV contains the id, arm,
sbp_0, sbp_6, and sbp_12 columns from the existing Session 4 synthetic trial.
To reproduce the data, run the Session 4 setup with set.seed(6301) and export
those columns without row names. All 60 patients are invented teaching records.
The plot shows 57 complete baseline/week-12 pairs; three lack week-12 SBP.
This is prepared R output, not a captured AI response. The reference also writes
a six-row summary CSV with observed counts and mean SBP by visit and arm.
Regenerate the PNG by following the reference script's copy-and-run instructions.
