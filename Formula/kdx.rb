class Kdx < Formula
  desc "K8s Discovery Experience - A command-line tool for exploring Kubernetes clusters"
  homepage "https://github.com/brannn/kdx"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brannn/kdx/releases/download/v0.2.2/kdx-macos-aarch64.tar.gz"
      sha256 "c6a21c10e40d9cad52056f33d9651280838d9002a948a57c0ea3d65879d07281"
    else
      url "https://github.com/brannn/kdx/releases/download/v0.2.2/kdx-macos-x86_64.tar.gz"
      sha256 "f6fe63860158b113bb04c90439fbcc6e955ae845645fb56ba51dcb794da509f3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/brannn/kdx/releases/download/v0.2.2/kdx-linux-x86_64.tar.gz"
      sha256 "67f6a7758cd9553f8ffa3560a1c450a482a175aae5f8448bc12b833c6389a29c"
    end
  end

  def install
    bin.install "kdx"
  end

  test do
    system "#{bin}/kdx", "--version"
  end
end
