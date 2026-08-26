cask "quotabar" do
  version "0.2.0"
  sha256 "f352605219ca8c0a3afef22f9ee9a1c006271a099b9bb4f85e6e970cf0094190"

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
