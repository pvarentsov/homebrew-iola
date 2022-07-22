# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Iola < Formula
  desc "Socket client with REST API"
  homepage "https://github.com/pvarentsov/iola"
  license "MIT"
  version "1.0.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pvarentsov/iola/releases/download/v1.0.0/iola-v1.0.0-macos-x64.zip"
    sha256 "8c28f41a5825bffe21a03cad078b3e3c116dd92324e5abebac810962fa0a1515"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pvarentsov/iola/releases/download/v1.0.0/iola-v1.0.0-macos-arm64.zip"
    sha256 "3d224e6044011007ed7c7d61a8c720baf0564029939512001e6f777c8c2b4aec"
  end

  on_linux do
    url "https://github.com/pvarentsov/iola/releases/download/v1.0.0/iola-v1.0.0-linux-x64.zip"
    sha256 "181d947f658f80310ee87df781e65efc3b384b7943a60ec89047f534fb6e077e"
  end

  conflicts_with "iola"

  def install
    bin.install "iola"
  end

  test do
    system "#{bin}/iola --version"
  end
end
