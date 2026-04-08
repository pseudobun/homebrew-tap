cask "tossinger" do
  version "1.0.17"
  sha256 "70eb8fb1c766cfd7d1380c2dd0046b0dc5532d3d2cbce2e12e7943b1baeb33c8"

  url "https://github.com/pseudobun/tossinger/releases/download/v1.0.17/Tossinger-1.0.17-macos.zip"
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
