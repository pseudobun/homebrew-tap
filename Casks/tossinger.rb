cask "tossinger" do
  version "1.1.1"
  sha256 "c09bfc95d053e32678aa7d66ac76624932aa4ca1edeed1b8205b88b5845d39ef"

  url "https://github.com/pseudobun/tossinger/releases/download/v1.1.1/Tossinger-1.1.1-macos.zip"
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
