cask "hilbert" do
  version "0.2.3"

  on_arm do
    sha256 "1ba4fedd512cb05cd683cb07b5c7b245a44ecba270fe08f1818a66eb47549abd"
    url "https://github.com/aburousan/hilbert-editor/releases/download/tauri-v#{version}/Hilbert_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "329c59f52143da0479b98954263a27f8d993b3d31b2074d481e70cf15cc01139"
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
