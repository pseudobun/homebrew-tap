cask "paw" do
  version "0.1.0-beta.12"
  sha256 "6fd26bddb4a187de8edcd9d149884389deed3f35d48d788f4af0498daf2edd43"

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
