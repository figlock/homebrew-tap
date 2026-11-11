class Figlock < Formula
  desc "Headless, agent-aware password manager"
  homepage "https://figlock.com"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    url "https://github.com/figlock/figlock/releases/download/v0.2.0/figlock-0.2.0-universal-apple-darwin.tar.gz"
    sha256 "5b1377b881cdcfba18fe8b82bef5bbe0178c14253c91e5771350db9d74ea9cca"
  end

  on_linux do
    on_intel do
      url "https://github.com/figlock/figlock/releases/download/v0.2.0/figlock-0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "79ef9bd481f3e4edcede654eaa75ca883f76869c8cb2a2aa8df71e3d5c463ed9"
    end
    on_arm do
      url "https://github.com/figlock/figlock/releases/download/v0.2.0/figlock-0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "825ae39f9098fcb02fa60f08f0607444b7a52fb3c879f8525496886f53b68f66"
    end
  end

  def install
    bin.install "figlock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlock --version")
  end
end
