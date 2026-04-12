cask "tossinger" do
  version "1.3.1"
  sha256 "ce58db5ce1e2056949039e788da94ad71f8f10bdc386ea5d12c376bef378eb76"

  url "https://github.com/pseudobun/tossinger/releases/download/v1.3.1/Tossinger-1.3.1-macos.zip"
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
