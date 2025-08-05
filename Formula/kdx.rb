class Kdx < Formula
  desc "K8s Discovery Experience - A command-line tool for exploring Kubernetes clusters"
  homepage "https://github.com/brannn/kdx"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brannn/kdx/releases/download/v0.4.1/kdx-macos-aarch64.tar.gz"
      sha256 "b320eacae77b0660b46e657b2f219100cf237ef89f93edc5d05bba49140a8adf"
    else
      url "https://github.com/brannn/kdx/releases/download/v0.4.1/kdx-macos-x86_64.tar.gz"
      sha256 "c8b77f58f1133c7a462e94389e2efe2895375d497ebd6c791ca12f15aa54ffea"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/brannn/kdx/releases/download/v0.4.1/kdx-linux-x86_64.tar.gz"
      sha256 "f327b56dd9610289ee8a2714076a4e243a4d7381f55457cad7288eb8dd569d78"
    end
  end

  def install
    bin.install "kdx"
  end

  test do
    system "#{bin}/kdx", "--version"
  end
end
