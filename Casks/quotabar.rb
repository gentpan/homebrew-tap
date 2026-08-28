cask "quotabar" do
  version "0.3.0"
  sha256 "d28bf802ed4ab6daf05c40ef4cbc65a7ce60b3a2518183599e2e499de2709f32"

  url "https://github.com/gentpan/quotabar/releases/download/v#{version}/QuotaBar-#{version}.zip"
  name "QuotaBar"
  desc "Menu-bar meter for AI coding provider quotas"
  homepage "https://github.com/gentpan/quotabar"

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
