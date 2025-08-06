class Kdx < Formula
  desc "K8s Discovery Experience - A command-line tool for exploring Kubernetes clusters"
  homepage "https://github.com/brannn/kdx"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brannn/kdx/releases/download/v0.4.1/kdx-macos-aarch64.tar.gz"
      sha256 "4dc86738dd1b940761954d8f7db1b56e5acafa087ac8938af2bac2fce7b3126b"
    else
      url "https://github.com/brannn/kdx/releases/download/v0.4.1/kdx-macos-x86_64.tar.gz"
      sha256 "8a899f778554b0da272ec2a7e5ba101c2dab2dec753673fb0dd7dceeb9d66fd1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/brannn/kdx/releases/download/v0.4.1/kdx-linux-x86_64.tar.gz"
      sha256 "5d929731f8365ba3e5fffdf392303e520d5f3f8a2c973d90a21c179a8a4f2cb8"
    end
  end

  def install
    bin.install "kdx"
  end

  test do
    system "#{bin}/kdx", "--version"
  end
end
