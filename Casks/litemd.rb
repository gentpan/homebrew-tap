cask "litemd" do
  version "0.1.1"
  sha256 "7cd505e5eb6683008097c1696e903ed31553a3d51a41136176e8603ee1e89f14"

  url "https://github.com/gentpan/LiteMD/releases/download/v#{version}/LiteMD-#{version}.dmg"
  name "LiteMD"
  desc "Lightweight Markdown editor, native to macOS"
  homepage "https://litemd.app"

  # 应用内置在线升级，brew upgrade 默认不再重复升级
  auto_updates true
  depends_on macos: :sequoia

  app "LiteMD.app"

  # 笔记本身是用户自己文件夹里的 .md 文件，不在这里删。
  # S3 备份的访问凭据存在登录钥匙串里，zap 删不掉，也不该替用户删。
  zap trash: [
    "~/Library/Application Support/LiteMD",
    "~/Library/Caches/app.litemd.LiteMD",
    "~/Library/HTTPStorages/app.litemd.LiteMD",
    "~/Library/Preferences/app.litemd.LiteMD.plist",
    "~/Library/Saved Application State/app.litemd.LiteMD.savedState",
  ]
end
