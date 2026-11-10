cask "paw" do
  version "0.1.0-beta.8"
  sha256 "59a8c8a98934911b0d911441aeff1279c22a6a0179a7ed2614aa45840ac50d0e"

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
