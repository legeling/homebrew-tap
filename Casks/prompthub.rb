cask "prompthub" do
  version "0.4.6"

  on_arm do
    sha256 "2cb9193498270b85c2684fad21d949f79bc33f5aad52c23b7b370db625050957"
    url "https://github.com/legeling/PromptHub/releases/download/v#{version}/PromptHub-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "72e7c08958e5af919201ae2b0fe7b9fdf2aab486b516a8bbca9798fbf19a77ce"
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
