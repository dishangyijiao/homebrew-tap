cask "assistmem" do
  version "0.1.2"
  sha256 "451551b3a79066fc8e3f214473fab47cec13bf6a12ed4db59f7e9cd25c781d98"

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
