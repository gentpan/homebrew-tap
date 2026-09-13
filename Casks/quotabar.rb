cask "quotabar" do
  version "0.5.3"
  sha256 "ef0ddf359af85ca94a8dda3ca2a2af1c2a99162c4c07ff77137a449177a4c506"

  url "https://github.com/gentpan/QuotaBar/releases/download/v#{version}/QuotaBar-#{version}.zip"
  name "QuotaBar"
  desc "Menu-bar meter for AI coding provider quotas"
  homepage "https://github.com/gentpan/QuotaBar"

  depends_on macos: :sonoma

  app "QuotaBar.app"

  # Preferences and the trend log. The manually entered provider credentials
  # live in the login keychain and are deliberately left alone — zap cannot
  # remove keychain items, and silently deleting a user's API keys would be
  # worse than leaving them.
  zap trash: [
    "~/.config/quotabar",
  ]
end
