cask "tossinger" do
  version "1.0.23"
  sha256 "aa5a855742e74f9b13130523cfe23d56bf0c22fb7a455fbc0ee92854f977452a"

  url "https://github.com/pseudobun/tossinger/releases/download/v1.0.23/Tossinger-1.0.23-macos.zip"
  name "Tossinger"
  desc "Save links and selected text for later"
  homepage "https://github.com/pseudobun/tossinger"

  depends_on macos: ">= :sequoia"

  app "Tossinger.app"

  zap trash: [
    "~/Library/Application Support/lutra-labs.toss",
    "~/Library/Preferences/lutra-labs.toss.plist",
    "~/Library/Caches/lutra-labs.toss",
  ]
end
