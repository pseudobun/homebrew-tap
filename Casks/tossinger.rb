cask "tossinger" do
  version "1.3.0"
  sha256 "ecf6b3175954eeae18cab27f44fc4a4185f0d1b1c32a24249ee7d5e2f611bbcc"

  url "https://github.com/pseudobun/tossinger/releases/download/v1.3.0/Tossinger-1.3.0-macos.zip"
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
