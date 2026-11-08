class Figlock < Formula
  desc "Headless, agent-aware password manager"
  homepage "https://figlock.com"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    url "https://github.com/figlock/figlock/releases/download/v0.1.0/figlock-0.1.0-universal-apple-darwin.tar.gz"
    sha256 "9cbda3a3416ad2258549d53bd713ea8077b5192b06cda929471f696b108f25d9"
  end

  on_linux do
    on_intel do
      url "https://github.com/figlock/figlock/releases/download/v0.1.0/figlock-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5299e585368d88e855b02ebaa3df9f8d1ff9fb20a2fc49002f89bcadd5a73ed9"
    end
    on_arm do
      url "https://github.com/figlock/figlock/releases/download/v0.1.0/figlock-0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9812ae42deed78c763ad793b43ec1ad06b22991f28f9bc02d6a44aa3c78b8213"
    end
  end

  def install
    bin.install "figlock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlock --version")
  end
end
