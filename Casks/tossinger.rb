cask "tossinger" do
  version "1.3.2"
  sha256 "7aaa3e5db3a5ff3a41569b4a690f88e609bf4ecde7f6fcd5aac435fe0417d32f"

  url "https://github.com/pseudobun/tossinger/releases/download/v1.3.2/Tossinger-1.3.2-macos.zip"
  name "Tossinger"
  desc "Save links and selected text for later"
  homepage "https://github.com/pseudobun/tossinger"

  depends_on macos: ">= :sequoia"

  app "Tossinger.app"

  # CLI helper embedded inside Tossinger.app. Brew creates a symlink
  # at $(brew --prefix)/bin/toss so users can run `toss list/add/delete`
  # from any terminal.
  binary "#{appdir}/Tossinger.app/Contents/Helpers/toss.app/Contents/MacOS/toss",
         target: "toss"

  zap trash: [
    "~/Library/Application Support/lutra-labs.toss",
    "~/Library/Preferences/lutra-labs.toss.plist",
    "~/Library/Caches/lutra-labs.toss",
  ]
end
