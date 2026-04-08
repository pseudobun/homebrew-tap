cask "tossinger" do
  version "1.0.20"
  sha256 "f6d8d1e5bb607c4824596f64b3311e0edb8fd9cf199934ea0627a6bb7f8fd648"

  url "https://github.com/pseudobun/tossinger/releases/download/v1.0.20/Tossinger-1.0.20-macos.zip"
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
