cask "quotabar" do
  version "0.5.7"
  sha256 "1a73e5dafc94bbd640876b6d932fbd9219b590320a557b979f1fd66347c99a9c"

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
