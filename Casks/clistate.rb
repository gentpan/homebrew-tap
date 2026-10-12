cask "clistate" do
  version "0.2.3"
  sha256 "1bff820a4782f6cf602d91752c9893f5dd4e6634d6a3bd4674ce2acb2ebd6763"

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
