cask "hop" do
  version "0.1.0-beta.6"
  sha256 "080e88536868b9d291ba18fed39df5104c244100d91f99b94bfdbcd5e5a585ef"

  url "https://github.com/pseudobun/hop/releases/download/v#{version}/hop-#{version}-macos.zip"
  name "hop"
  desc "Tiny native launcher with calculator, clipboard history, snippets and notes"
  homepage "https://github.com/pseudobun/hop"

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
