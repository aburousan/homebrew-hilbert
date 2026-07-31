cask "hilbert" do
  version "0.1.16"

  on_arm do
    sha256 "d0c5ca75c68af0230fa8fbd122b343266db8632d048a584f1135346d7e6dbda7"
    url "https://github.com/aburousan/hilbert-editor/releases/download/tauri-v#{version}/Hilbert_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "954c1e065fc28f39ae78fb89684a875b77a19a90fe31d344de4afa50461710cb"
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
