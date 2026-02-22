cask "assistmem" do
  version "0.1.0"
  sha256 "e8633c5e628e1f3f60acb22098c4a9ed8bf43e5af1b00f1eaf883db6f8de9b30"

  url "https://github.com/dishangyijiao/assistant-memory/releases/download/v#{version}/AssistMem_#{version}_aarch64.dmg"
  name "AssistMem"
  desc "Local indexer and keyword search for chat history from Cursor, Copilot, Claude Code, Codex, and Gemini CLI"
  homepage "https://github.com/dishangyijiao/assistant-memory"

  app "AssistMem.app"

  zap trash: [
    "~/Library/Application Support/com.assistmem.app",
    "~/Library/Logs/com.assistmem.app",
    "~/Library/Preferences/com.assistmem.app.plist",
    "~/Library/Saved Application State/com.assistmem.app.savedState",
  ]
end
