class Figlock < Formula
  desc "Headless, agent-aware password manager"
  homepage "https://figlock.com"
  version "0.5.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    url "https://github.com/figlock/figlock/releases/download/v0.5.1/figlock-0.5.1-universal-apple-darwin.tar.gz"
    sha256 "66e49de726034e0a87324b4a0a324aa64bf1a30dd062167fee70610fbe437a76"
  end

  on_linux do
    on_intel do
      url "https://github.com/figlock/figlock/releases/download/v0.5.1/figlock-0.5.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "20fab548a32aa69aa575630b5c94aed599c07c8b213d32a7873d55748b205b88"
    end
    on_arm do
      url "https://github.com/figlock/figlock/releases/download/v0.5.1/figlock-0.5.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e4ee0720b653ff9012ae7939a4403a026c51d8c5a7026d42cc02b5f6fbff8927"
    end
  end

  def install
    bin.install "figlock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlock --version")
  end
end
