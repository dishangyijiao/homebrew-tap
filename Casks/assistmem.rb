cask "assistmem" do
  version "0.2.0"
  sha256 "37934c77c0b88a8ebd5091f0354b2239af2c21d1fb08bdd34085ce7af89a4b8a"

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
