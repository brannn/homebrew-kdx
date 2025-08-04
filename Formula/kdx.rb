class Kdx < Formula
  desc "K8s Discovery Experience - A command-line tool for exploring Kubernetes clusters"
  homepage "https://github.com/brannn/kdx"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brannn/kdx/releases/download/v0.3.1/kdx-macos-aarch64.tar.gz"
      sha256 "54faf61e95c5bdfee0da7ec087dd75dfb3f65bad7709d8ce0d25ac1683c9e35a"
    else
      url "https://github.com/brannn/kdx/releases/download/v0.3.1/kdx-macos-x86_64.tar.gz"
      sha256 "ca18c6db3e491dcd4bc4946a5322b8655afed7f4568a5dcb9f9748cbe79d74be"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/brannn/kdx/releases/download/v0.3.1/kdx-linux-x86_64.tar.gz"
      sha256 "70f99fc22c3a07e6cbda94b6175bd246079a49a010f9dbb85a944c6b6f031f38"
    end
  end

  def install
    bin.install "kdx"
  end

  test do
    system "#{bin}/kdx", "--version"
  end
end
