cask "tossinger" do
  version "1.0.24"
  sha256 "ba8ea61812675eca4b09175d43a27f1ebfc47b7055decd03cfa9bd00ea447875"

  url "https://github.com/pseudobun/tossinger/releases/download/v1.0.24/Tossinger-1.0.24-macos.zip"
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
