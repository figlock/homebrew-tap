class Figlock < Formula
  desc "Headless, agent-aware password manager"
  homepage "https://figlock.com"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    url "https://github.com/figlock/figlock/releases/download/v0.3.0/figlock-0.3.0-universal-apple-darwin.tar.gz"
    sha256 "fd0f656ab00c091e828cbb2884989eeee748eee60807427924221675ff2ba5dd"
  end

  on_linux do
    on_intel do
      url "https://github.com/figlock/figlock/releases/download/v0.3.0/figlock-0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c22d091a789d8849dcee958f25d4c2017a259e0606923801f44fe6d29151350e"
    end
    on_arm do
      url "https://github.com/figlock/figlock/releases/download/v0.3.0/figlock-0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6041cd39b9a7da68fc9be1069e91e9693103074c655196a029d8440bde1f84fd"
    end
  end

  def install
    bin.install "figlock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/figlock --version")
  end
end
