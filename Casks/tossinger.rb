cask "tossinger" do
  version "1.0.16"
  sha256 "c86ae15b19d109377edb1a8d367e0cfb56a721ed925c8d86ae931d87a4f97d8b"

  url "https://github.com/pseudobun/tossinger/releases/download/v1.0.16/Tossinger-1.0.16-macos.zip"
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
