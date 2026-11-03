cask "hilbert" do
  version "0.2.10"

  on_arm do
    sha256 "070b91857acd625dd243a5ec32d4830178536fc8283cbcf2e047a72964ac5981"
    url "https://github.com/aburousan/hilbert-editor/releases/download/tauri-v#{version}/Hilbert_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "ba98704e1ce7f36d62702a63a1a9790dbc2d6614d80cf45ec4e95b1b4b2178b3"
    url "https://github.com/aburousan/hilbert-editor/releases/download/tauri-v#{version}/Hilbert_#{version}_x64.dmg"
  end

  name "Hilbert"
  desc "Offline desktop editor for Typst, aimed at maths and physics writing"
  homepage "https://github.com/aburousan/hilbert-editor"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^tauri[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "Hilbert.app"

  zap trash: [
    "~/Library/Application Support/com.kaziaburousan.hilbert",
    "~/Library/Caches/com.kaziaburousan.hilbert",
    "~/Library/Preferences/com.kaziaburousan.hilbert.plist",
    "~/Library/Saved Application State/com.kaziaburousan.hilbert.savedState",
    "~/Library/WebKit/com.kaziaburousan.hilbert",
  ]
end
