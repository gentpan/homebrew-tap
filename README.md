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

```bash
brew install --cask quotabar
```

Requires macOS 14 (Sonoma) or later. Signed with a Developer ID certificate
and notarized by Apple.
