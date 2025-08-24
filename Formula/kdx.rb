class Kdx < Formula
  desc "K8s Discovery Experience - A command-line tool for exploring Kubernetes clusters"
  homepage "https://github.com/brannn/kdx"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brannn/kdx/releases/download/v0.4.3/kdx-macos-aarch64.tar.gz"
      sha256 "b9dfe2b763f47c99489ef65990e1c158d4e6109cc62f8a2bc541d1a90175eb17"
    else
      url "https://github.com/brannn/kdx/releases/download/v0.4.3/kdx-macos-x86_64.tar.gz"
      sha256 "ce0ce374c533878311321affcac97f7fcdf4f7d8bd910ad7137416a97551efe3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/brannn/kdx/releases/download/v0.4.3/kdx-linux-x86_64.tar.gz"
      sha256 "e4d2290070aab45f8a2f2bf1aca36ba533b65eef49af5ed9448c70e3895a1c6f"
    end
  end

  def install
    bin.install "kdx"
  end

  test do
    system "#{bin}/kdx", "--version"
  end
end
