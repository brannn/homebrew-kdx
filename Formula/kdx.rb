class Kdx < Formula
  desc "K8s Discovery Experience - A command-line tool for exploring Kubernetes clusters"
  homepage "https://github.com/brannn/kdx"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brannn/kdx/releases/download/v0.4.2/kdx-macos-aarch64.tar.gz"
      sha256 "df592821e6be8600cc227ccf0ca88f03e838857ea1d1a30059794376f05a31c7"
    else
      url "https://github.com/brannn/kdx/releases/download/v0.4.2/kdx-macos-x86_64.tar.gz"
      sha256 "352e19aee2109e1c6fee585198a6003a3d06406b704f65f4c571fdf6f0c55cfd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/brannn/kdx/releases/download/v0.4.2/kdx-linux-x86_64.tar.gz"
      sha256 "2f53ae0411e2551180d2c7a0e7fda785006fdd06c2c1ed02d7ed3b78ee0e9e2b"
    end
  end

  def install
    bin.install "kdx"
  end

  test do
    system "#{bin}/kdx", "--version"
  end
end
