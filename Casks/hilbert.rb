cask "hilbert" do
  version "0.1.17"

  on_arm do
    sha256 "b14b0127d40a9db0ac81a03a6f3f14142b39f33bff4989f8349d6b4f17c2cd3b"
    url "https://github.com/aburousan/hilbert-editor/releases/download/tauri-v#{version}/Hilbert_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "d39b6931f7b7db3539cf5119645d3328eb0762e1dc4b5a863fdcaa645f0d3b0f"
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
