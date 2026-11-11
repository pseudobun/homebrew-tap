cask "paw" do
  version "0.1.0-beta.13"
  sha256 "e4befe081965ace293b35e812b03d487f1d28303f1d4dd42cc86f05b649df3c0"

  url "https://github.com/pseudobun/paw/releases/download/v#{version}/paw-#{version}-macos.zip"
  name "paw"
  desc "Tiling window manager with virtual workspaces, presets and stack indicators"
  homepage "https://github.com/pseudobun/paw"

  depends_on macos: :sonoma

  auto_updates true

  app "paw.app"
  binary "#{appdir}/paw.app/Contents/MacOS/paw"

  uninstall quit:      "com.pseudobun.paw",
            launchctl: ["com.pseudobun.paw", "com.pseudobun.paw.dock"],
            delete:    [
              "/Library/LaunchDaemons/com.pseudobun.paw.dock.plist",
              "/Library/Application Support/paw",
            ]

  zap trash: [
    "~/.config/paw",
    "~/Library/Application Support/com.pseudobun.paw",
    "~/Library/Caches/com.pseudobun.paw",
    "~/Library/LaunchAgents/com.pseudobun.paw.plist",
  ]
end
