cask "clistate" do
  version "0.2.1"
  sha256 "50b4681c98fe8f70a2aa09bafbf58d8979afdbea081782d9de85866fb472f0a6"

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
