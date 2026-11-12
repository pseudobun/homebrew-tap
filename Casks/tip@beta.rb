cask "tip@beta" do
  version "0.1.0-beta.2"
  sha256 "9d2bc4f723c6b859e527b8801fcd7a0004d69ebf1816a88c667b480d91961ba8"

  url "https://github.com/pseudobun/tip/releases/download/v#{version}/tip-#{version}-macos.zip"
  name "tip"
  desc "Native, event-driven menu bar replacement with islands, themes and plugins"
  homepage "https://github.com/pseudobun/tip"

  conflicts_with cask: "pseudobun/tap/tip"
  depends_on macos: :tahoe
  depends_on arch: :arm64

  auto_updates true

  app "tip.app"
  binary "#{appdir}/tip.app/Contents/MacOS/tip"

  uninstall quit: "com.pseudobun.tip"

  zap launchctl: "com.pseudobun.tip",
      trash:     [
        "~/.config/tip",
        "~/Library/Application Support/com.pseudobun.tip",
        "~/Library/Caches/com.pseudobun.tip",
        "~/Library/LaunchAgents/com.pseudobun.tip.plist",
      ]
end
