cask "prompthub" do
  version "0.4.4"

  on_arm do
    sha256 "89743871f187234615e3f3f520c84c127457bbb9559c08a40ae943f096dbdebb"
    url "https://github.com/legeling/PromptHub/releases/download/v#{version}/PromptHub-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "dc25309edbaf771bb37643fab2297133457f646f55f1f92789f154e08ef9de53"
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
