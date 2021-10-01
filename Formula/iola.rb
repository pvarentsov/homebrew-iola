# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Iola < Formula
  desc "Socket client with REST API"
  homepage "https://github.com/pvarentsov/iola"
  license "MIT"
  version "0.5.2"

  on_linux do
    url "https://github.com/pvarentsov/iola/releases/download/v0.5.2/iola-v0.5.2-linux-amd64.zip"
    sha256 "ddb9c0104e53890a86b21b0696caead4fa8b1f1ccae02ac15ee0e7e0a1811739"
  end

  on_macos do
    url "https://github.com/pvarentsov/iola/releases/download/v0.5.2/iola-v0.5.2-macos-amd64.zip"
    sha256 "5ef6120d8bd342c24825fbbb0f23b0cc6b2d55075197bd45f28fd2a936c51271"
  end

  conflicts_with "iola"

  def install
    bin.install "iola"
  end

  test do
    system "#{bin}/iola --version"
  end
end
