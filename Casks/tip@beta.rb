cask "tip@beta" do
  version "0.1.0-beta.9"
  sha256 "d4cfcd42ef8249b9187eba8832fcf7cc49ca30e7148d4039017603687fdeebd0"

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
