cask "prompthub" do
  version "0.4.8"

  on_arm do
    sha256 "f67e26e2d90d28d0e0d4081975e3bed289cb64cebcad182d4220e8d883d0a318"
    url "https://github.com/legeling/PromptHub/releases/download/v#{version}/PromptHub-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "bdd641c8e39d5d546cd1d5b223c17194eb942a571f4b60988cb9d20e07789706"
    url "https://github.com/legeling/PromptHub/releases/download/v#{version}/PromptHub-#{version}-x64.dmg"
  end

  name "PromptHub"
  desc "Cross-platform prompt management tool for AI workflows"
  homepage "https://github.com/legeling/PromptHub"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PromptHub.app"

  zap trash: [
    "~/Library/Application Support/PromptHub",
    "~/Library/Preferences/com.prompthub.app.plist",
    "~/Library/Saved Application State/com.prompthub.app.savedState",
  ]
end
