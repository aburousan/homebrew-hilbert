cask "hilbert" do
  version "0.2.8"

  on_arm do
    sha256 "61579c8159b73768d8f41c9932017f18db8ab7cc17f645e6d6fc0c9f98fb47aa"
    url "https://github.com/aburousan/hilbert-editor/releases/download/tauri-v#{version}/Hilbert_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "4fa29046b8c5f61bf8bcbfea1505db1efff6da04f7a88c29106a987076932616"
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
