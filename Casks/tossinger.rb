cask "tossinger" do
  version "1.1.0"
  sha256 "47f8e040b33c18bb4ec467c1e124c884e388e6cdc5b8c42b94043d7c1eb6beb4"

  url "https://github.com/pseudobun/tossinger/releases/download/v1.1.0/Tossinger-1.1.0-macos.zip"
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
