cask "tossinger" do
  version "1.0.19"
  sha256 "0d9f77df331772efe76fc127d2bb9bf6cf59f4b3bdfd0511dd58b665d4189458"

  url "https://github.com/pseudobun/tossinger/releases/download/v1.0.19/Tossinger-1.0.19-macos.zip"
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
