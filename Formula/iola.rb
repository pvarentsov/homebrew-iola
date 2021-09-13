# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Iola < Formula
  desc "Socket client with REST API"
  homepage "https://github.com/pvarentsov/iola"
  license "MIT"
  version "0.5.0"

  on_macos do
    url "https://github.com/pvarentsov/iola/releases/download/v0.5.0/iola-macos-amd64.tar.gz"
    sha256 "1d76e927153eaf722eeff6c32399dbb6886d8fec916113c048305aba3d3e6759"
  end

  on_linux do
    url "https://github.com/pvarentsov/iola/releases/download/v0.5.0/iola-linux-amd64.tar.gz"
    sha256 "d9973eb6a9d34470bcc893534094abf0a06a603d4d89462a66cecfb36dcb5a0d"
  end

  conflicts_with "iola"

  def install
    bin.install "iola"
  end

  test do
    system "#{bin}/iola --version"
  end
end
