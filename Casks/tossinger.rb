cask "tossinger" do
  version "1.2.0"
  sha256 "1b3b628fbcdc1751a0cf877273309b6b1f19aece5f7170c9405b7ef8b7a87200"

  url "https://github.com/pseudobun/tossinger/releases/download/v1.2.0/Tossinger-1.2.0-macos.zip"
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
