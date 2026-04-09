cask "tossinger" do
  version "1.2.1"
  sha256 "d3fc98b9eb1f1091ff344fa6a8201fac06762554c284dfcd96dba4b2230f2499"

  url "https://github.com/pseudobun/tossinger/releases/download/v1.2.1/Tossinger-1.2.1-macos.zip"
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
