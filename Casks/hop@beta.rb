cask "hop@beta" do
  version "0.1.0-beta.20"
  sha256 "2b9c46227bde9d729e06559776d61d60f9dfd98ace39518a63df8d4456d5ba9c"

  url "https://github.com/pseudobun/hop/releases/download/v#{version}/hop-#{version}-macos.zip"
  name "hop"
  desc "Tiny native launcher with calculator, clipboard history, snippets and notes"
  homepage "https://github.com/pseudobun/hop"

  conflicts_with cask: "pseudobun/tap/hop"
  depends_on macos: :tahoe
  depends_on arch: :arm64

  auto_updates true

  app "hop.app"
  binary "#{appdir}/hop.app/Contents/MacOS/hop"

  # Quitting restores the Caps Lock mapping the hyper key changed.
  uninstall quit: "com.pseudobun.hop"

  zap trash: [
    "~/.config/hop",
    "~/Library/Application Support/com.pseudobun.hop",
    "~/Library/Caches/com.pseudobun.hop",
    "~/Library/HTTPStorages/com.pseudobun.hop",
    "~/Library/Preferences/com.pseudobun.hop.plist",
  ]
end
