# gentpan/homebrew-tap

Homebrew tap for my macOS apps.

```bash
brew tap gentpan/tap
brew trust gentpan/tap
```

Homebrew 6 refuses to load casks from an untrusted third-party tap, so the
`trust` step is required — without it `brew install` stops with an error.

## Casks

| Cask | Description |
|---|---|
| [`quotabar`](Casks/quotabar.rb) | Every AI coding limit, in your menu bar — quota meter for Claude, Codex, Gemini, Cursor, Grok and more. |
| [`clistate`](Casks/clistate.rb) | See every CLI tool, runtime and package manager on your Mac — and which version your terminal actually runs. |

```bash
brew install --cask quotabar
brew install --cask clistate
```

QuotaBar requires macOS 14 (Sonoma) or later; CLIState requires macOS 15
(Sequoia) or later. Both are signed with a Developer ID certificate and
notarized by Apple.
