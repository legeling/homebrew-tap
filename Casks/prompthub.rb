cask "prompthub" do
  version "0.6.1"

  on_arm do
    sha256 "240b141f645e85080974deb701487300a4ad4c68430dfdb0c1c981f393e34e85"
    url "https://github.com/legeling/PromptHub/releases/download/v#{version}/PromptHub-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "7128b50517b01f6b46eee55427d769c7b6078fad1cbc7810f89c0a78b0337ff5"
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
