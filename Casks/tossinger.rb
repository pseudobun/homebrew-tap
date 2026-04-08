cask "tossinger" do
  version "1.0.21"
  sha256 "947c8666a4c557c6bd52aabb5a2140897043eca9a6ed0544c8421d9c9d9bcaf8"

  url "https://github.com/pseudobun/tossinger/releases/download/v1.0.21/Tossinger-1.0.21-macos.zip"
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
