class Figlock < Formula
  desc "Headless, agent-aware password manager"
  homepage "https://figlock.com"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    url "https://github.com/figlock/figlock/releases/download/v0.4.0/figlock-0.4.0-universal-apple-darwin.tar.gz"
    sha256 "82ac4d7dd3e015adeda6d0ac58a7b024002d272575e8c47677562ba27fa0cd4c"
  end

  on_linux do
    on_intel do
      url "https://github.com/figlock/figlock/releases/download/v0.4.0/figlock-0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4308e3bb73f9317ce66b235902838b34e4e40eb3996182a43a90d09c1d29e39c"
    end
    on_arm do
      url "https://github.com/figlock/figlock/releases/download/v0.4.0/figlock-0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dbcf430853f2b63d609e7c176b7ae4f28d94bb251398a5ea2f4f95b8c9b63928"
    end
  end

  def install
    bin.install "figlock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlock --version")
  end
end
