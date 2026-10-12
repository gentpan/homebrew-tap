cask "clistate" do
  version "0.2.3"
  sha256 "064176efbc4313183f93f95eabfb5a97b45e71b6e2de62d52ffa8155f96bac5c"

  url "https://github.com/gentpan/CLIState/releases/download/v#{version}/CLIState-#{version}.zip"
  name "CLI State"
  desc "Shows installed CLI tools and which version the terminal runs"
  homepage "https://github.com/gentpan/CLIState"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself with Sparkle; Homebrew shouldn't fight it.
  auto_updates true
  depends_on macos: :sequoia

  app "CLIState.app"

  zap trash: [
    "~/Library/Application Support/CLIState",
    "~/Library/Caches/com.clistate.app",
    "~/Library/HTTPStorages/com.clistate.app",
    "~/Library/Preferences/com.clistate.app.plist",
  ]
end
