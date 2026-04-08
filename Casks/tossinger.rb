cask "tossinger" do
  version "1.0.18"
  sha256 "4368ac4d8182283aa2085f91930a021fa38e3c6e39584371f259ba2cb9f8fbff"

  url "https://github.com/pseudobun/tossinger/releases/download/v1.0.18/Tossinger-1.0.18-macos.zip"
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
