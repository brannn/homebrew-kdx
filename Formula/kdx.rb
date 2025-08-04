class Kdx < Formula
  desc "K8s Discovery Experience - A command-line tool for exploring Kubernetes clusters"
  homepage "https://github.com/brannn/kdx"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brannn/kdx/releases/download/v0.2.5/kdx-macos-aarch64.tar.gz"
      sha256 "94b395a1f455c09bb33b24cadcbe9317c08d07d3926430ff7d8e994ab9b55604"
    else
      url "https://github.com/brannn/kdx/releases/download/v0.2.5/kdx-macos-x86_64.tar.gz"
      sha256 "5b71c55d5395acd59e5fb58f85df88b567b0abee20757e10e37260806a309cfd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/brannn/kdx/releases/download/v0.2.5/kdx-linux-x86_64.tar.gz"
      sha256 "9f9a7e9830fc93c15401998dc36679b917fa86d8b54bdb9e990bcd7431e2e4ec"
    end
  end

  def install
    bin.install "kdx"
  end

  test do
    system "#{bin}/kdx", "--version"
  end
end
