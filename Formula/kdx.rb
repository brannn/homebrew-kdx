class Kdx < Formula
  desc "K8s Discovery Experience - A command-line tool for exploring Kubernetes clusters"
  homepage "https://github.com/brannn/kdx"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brannn/kdx/releases/download/v0.2.4/kdx-macos-aarch64.tar.gz"
      sha256 "0bd77b5cd04c75689d65b9cded41ce27c1e0256994795079e7f8e43a8ab2f626"
    else
      url "https://github.com/brannn/kdx/releases/download/v0.2.4/kdx-macos-x86_64.tar.gz"
      sha256 "255e53e04e6f4542a24fbee7edc4601cac31e7249788046bd1f4d6c34d04c531"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/brannn/kdx/releases/download/v0.2.4/kdx-linux-x86_64.tar.gz"
      sha256 "23410ad6fda6ebacb76b851ec698616898949c8173c12dc6f91fcbc62cd3e4bb"
    end
  end

  def install
    bin.install "kdx"
  end

  test do
    system "#{bin}/kdx", "--version"
  end
end
