class Kdx < Formula
  desc "K8s Discovery Experience - A command-line tool for exploring Kubernetes clusters"
  homepage "https://github.com/brannn/kdx"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brannn/kdx/releases/download/v0.4.0/kdx-macos-aarch64.tar.gz"
      sha256 "883b8c5d919e38702b425e1d7c579a13ca46d0e655bb4085fb337a1fdad6c833"
    else
      url "https://github.com/brannn/kdx/releases/download/v0.4.0/kdx-macos-x86_64.tar.gz"
      sha256 "53c9eeb7dc3ac8c0d92ed4c8140efdc17306c6dfb5417b459d5898813475dab2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/brannn/kdx/releases/download/v0.4.0/kdx-linux-x86_64.tar.gz"
      sha256 "eca6be6d35001934cdb1d47e16a7eeca38e43b70bcd154c1715680b17a17f69b"
    end
  end

  def install
    bin.install "kdx"
  end

  test do
    system "#{bin}/kdx", "--version"
  end
end
