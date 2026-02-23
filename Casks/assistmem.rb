cask "assistmem" do
  version "0.1.0"
  sha256 "4762cfd6e2ce3fde2092dc21ac14b8ecf39361b6bb0bea1ca3c31e995466897f"

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
