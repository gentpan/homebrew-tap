cask "clistate" do
  version "0.1.0"
  sha256 "11791f5323560ed829cfb457cc80aad6f3f7c06be091b7f46ead0de844b296b0"

  url "https://github.com/gentpan/CLIState/releases/download/v#{version}/CLIState-#{version}.zip"
  name "CLIState"
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
