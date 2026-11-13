cask "hop@beta" do
  version "0.1.0-beta.19"
  sha256 "ec844ed59683ba89b52c9df441d394b02c6d81f8f73fa24a190d25aae969017b"

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
