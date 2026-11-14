class Figlock < Formula
  desc "Headless, agent-aware password manager"
  homepage "https://figlock.com"
  version "0.3.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    url "https://github.com/figlock/figlock/releases/download/v0.3.1/figlock-0.3.1-universal-apple-darwin.tar.gz"
    sha256 "2b2541278fcab5b7f2871a2eefe5937c2779135a7e122c2442706c7b562a2478"
  end

  on_linux do
    on_intel do
      url "https://github.com/figlock/figlock/releases/download/v0.3.1/figlock-0.3.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a06f8ac7fa11bef084e152fcb92fd3dd7cce3240d0ecaaca0854e3bae1f0816a"
    end
    on_arm do
      url "https://github.com/figlock/figlock/releases/download/v0.3.1/figlock-0.3.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b45dc5548e5e459ef2131266808b7059faad3a3e15b16c77dbcd67b7fcfc3a1e"
    end
  end

  def install
    bin.install "figlock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlock --version")
  end
end
