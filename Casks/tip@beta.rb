cask "tip@beta" do
  version "0.1.0-beta.4"
  sha256 "297d5f555288fc054850a7739426164b65f8b7c639a96b9d22ca76a9eb58d816"

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
