cask "hop@beta" do
  version "0.1.0-beta.15"
  sha256 "961425d260c4179bc6cb6dbbea8760a19fe3c8c98db9159c7858fd0995177093"

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
