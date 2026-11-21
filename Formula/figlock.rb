class Figlock < Formula
  desc "Headless, agent-aware password manager"
  homepage "https://figlock.com"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    url "https://github.com/figlock/figlock/releases/download/v0.5.0/figlock-0.5.0-universal-apple-darwin.tar.gz"
    sha256 "dcc4c076c9997961dccb734784d05f97abd0d6f0355be6d902d7cd111c8a5939"
  end

  on_linux do
    on_intel do
      url "https://github.com/figlock/figlock/releases/download/v0.5.0/figlock-0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cec6fd211a80dd8f68f5915cad3335d7a62db5a48baa4a1adf23a5873db97f70"
    end
    on_arm do
      url "https://github.com/figlock/figlock/releases/download/v0.5.0/figlock-0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "02764ca6d170423e65dcdefc5866c1e46a966b7a69cbd55f5dfb0f7cc477bdef"
    end
  end

  def install
    bin.install "figlock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlock --version")
  end
end
