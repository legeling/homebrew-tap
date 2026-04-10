cask "prompthub" do
  version "0.5.1"

  on_arm do
    sha256 "4671466fa8610aa1a92e9f6f4c26b4e10b47bf96b82ce2d0a4e599f7113e2945"
    url "https://github.com/legeling/PromptHub/releases/download/v#{version}/PromptHub-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "138f5c12e8f9dcf34abfebef5e8d0f8f0c49b85bb4e2c88a8cb1981f6b6dfe85"
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
