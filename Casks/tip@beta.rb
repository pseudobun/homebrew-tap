cask "tip@beta" do
  version "0.1.0-beta.1"
  sha256 "9df62f2de97e238a8dd0d150a02ae396ac0e87451944564f3567565e54989acd"

  url "https://github.com/pseudobun/tip/releases/download/v#{version}/tip-#{version}-macos.zip"
  name "tip"
  desc "Native, event-driven menu bar replacement with islands, themes and plugins"
  homepage "https://github.com/pseudobun/tip"

  conflicts_with cask: "tip"
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
