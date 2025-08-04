class Kdx < Formula
  desc "K8s Discovery Experience - A command-line tool for exploring Kubernetes clusters"
  homepage "https://github.com/brannn/kdx"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brannn/kdx/releases/download/v0.2.3/kdx-macos-aarch64.tar.gz"
      sha256 "f32a05589ed9273ab7a67b1e686a338ad264758557fca912d0b9d6ec17ed0d0d"
    else
      url "https://github.com/brannn/kdx/releases/download/v0.2.3/kdx-macos-x86_64.tar.gz"
      sha256 "c99b0a9261aa2accca18768086f479bd8e5def283f4881f218c073fe1b966ac9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/brannn/kdx/releases/download/v0.2.3/kdx-linux-x86_64.tar.gz"
      sha256 "27f87879573dd7f173f822c85b0118ba7ef655653468f9579fb977858adbd9ff"
    end
  end

  def install
    bin.install "kdx"
  end

  test do
    system "#{bin}/kdx", "--version"
  end
end
