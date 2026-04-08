cask "tossinger" do
  version "1.0.22"
  sha256 "7fda26c1dea199be6572c162e240ec71d9e7a9136dd27789546a5f5a63dcd1aa"

  url "https://github.com/pseudobun/tossinger/releases/download/v1.0.22/Tossinger-1.0.22-macos.zip"
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
