cask "assistmem" do
  version "0.1.3"
  sha256 "03f7d6478b987178ad4a6b2c527edb0f483e10728a59a5cae12910480edf683e"

  url "https://github.com/dishangyijiao/assistant-memory/releases/download/v#{version}/AssistMem_#{version}_aarch64.dmg"
  name "AssistMem"
  desc "Local indexer and keyword search for chat history from Cursor, Copilot, Claude Code, Codex, and Gemini CLI"
  homepage "https://github.com/dishangyijiao/assistant-memory"

  app "AssistMem.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/AssistMem.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.assistmem.app",
    "~/Library/Logs/com.assistmem.app",
    "~/Library/Preferences/com.assistmem.app.plist",
    "~/Library/Saved Application State/com.assistmem.app.savedState",
  ]
end
