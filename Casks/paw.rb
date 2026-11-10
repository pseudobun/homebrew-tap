cask "paw" do
  version "0.1.0-beta.7"
  sha256 "890b0ba7a1879c428cc206702e1bed5f4dbd0ba2df419277e81c34a113c9392e"

  url "https://github.com/pseudobun/paw/releases/download/v#{version}/paw-#{version}-macos.zip"
  name "paw"
  desc "Tiling window manager with virtual workspaces, presets and stack indicators"
  homepage "https://github.com/pseudobun/paw"

  depends_on macos: :sonoma

  auto_updates true

  app "paw.app"
  binary "#{appdir}/paw.app/Contents/MacOS/paw"

  uninstall quit:      "com.pseudobun.paw",
            launchctl: "com.pseudobun.paw"

  zap trash: [
    "~/.config/paw",
    "~/Library/Application Support/com.pseudobun.paw",
    "~/Library/Caches/com.pseudobun.paw",
    "~/Library/LaunchAgents/com.pseudobun.paw.plist",
  ]
end
