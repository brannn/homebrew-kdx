class Kdx < Formula
  desc "K8s Discovery Experience - A command-line tool for exploring Kubernetes clusters"
  homepage "https://github.com/brannn/kdx"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brannn/kdx/releases/download/v0.3.0/kdx-macos-aarch64.tar.gz"
      sha256 "2e6ba370596c8fb5bcbb697f8e4ed843e20b18a1d23e11797da15eb5b1e0dca2"
    else
      url "https://github.com/brannn/kdx/releases/download/v0.3.0/kdx-macos-x86_64.tar.gz"
      sha256 "5f30d4ac7db2ca40b6b25ccd1757d1d6bee98e2b26b30ea5b2f530eefe8fb1f7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/brannn/kdx/releases/download/v0.3.0/kdx-linux-x86_64.tar.gz"
      sha256 "762a914b31b9e714619cbb0f306ade2e69ae8b9d3a7544dcb766c58729305e46"
    end
  end

  def install
    bin.install "kdx"
  end

  test do
    system "#{bin}/kdx", "--version"
  end
end
