cask "paw" do
  version "0.1.0-beta.6"
  sha256 "978fbdc2acd6b5d09d2984415f670c7b1e977c0bcdc7c14208eb3cf4e227f542"

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
