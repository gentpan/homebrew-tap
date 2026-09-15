cask "quotabar" do
  version "0.5.6"
  sha256 "53ad478a9e12659a721a6c09a372f4d104e54aac84fedeaf6ec14760cc0e84c4"

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
