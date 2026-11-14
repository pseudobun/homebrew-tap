cask "paw@beta" do
  version "0.1.0-beta.37"
  sha256 "98f6a84e75407275e0b48b96430a7ce9546a44fea40420405e808a2929f7b7a6"

  url "https://github.com/pseudobun/paw/releases/download/v#{version}/paw-#{version}-macos.zip"
  name "paw"
  desc "Tiling window manager with virtual workspaces, presets and stack indicators"
  homepage "https://github.com/pseudobun/paw"

  conflicts_with cask: "pseudobun/tap/paw"
  depends_on macos: :sonoma

  auto_updates true

  app "paw.app"
  binary "#{appdir}/paw.app/Contents/MacOS/paw"

  # Homebrew runs these on every upgrade too, and checks every launchctl service with sudo: only
  # quitting paw here, or each upgrade would ask for a password (and remove the Dock helper,
  # `sudo paw dock install`). paw says when an update changed the helper;
  # `sudo paw dock uninstall` removes it, and so does --zap.
  uninstall quit: "com.pseudobun.paw"

  zap launchctl: ["com.pseudobun.paw", "com.pseudobun.paw.dock"],
      delete:    [
        "/Library/LaunchDaemons/com.pseudobun.paw.dock.plist",
        "/Library/Application Support/paw",
      ],
      trash:     [
        "~/.config/paw",
        "~/Library/Application Support/com.pseudobun.paw",
        "~/Library/Caches/com.pseudobun.paw",
        "~/Library/LaunchAgents/com.pseudobun.paw.plist",
      ]
end
