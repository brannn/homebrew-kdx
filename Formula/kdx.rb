class Kdx < Formula
  desc "K8s Discovery Experience - A command-line tool for exploring Kubernetes clusters"
  homepage "https://github.com/brannn/kdx"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brannn/kdx/releases/download/v0.2.3/kdx-macos-aarch64.tar.gz"
      sha256 "c54a79cd48ad52a52e93fb7c9a66cb08daa490d2e06a426e248dbd6bbf0741ed"
    else
      url "https://github.com/brannn/kdx/releases/download/v0.2.3/kdx-macos-x86_64.tar.gz"
      sha256 "5c380f1489024a2a6623c6e32ac7c8fc00ff31a8561c0aed4937a36b3d27c540"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/brannn/kdx/releases/download/v0.2.3/kdx-linux-x86_64.tar.gz"
      sha256 "d6b1945de585c6fc3cfe3e3dbc5f6986970e136ce822423ec11a501221a2f4aa"
    end
  end

  def install
    bin.install "kdx"
  end

  test do
    system "#{bin}/kdx", "--version"
  end
end
