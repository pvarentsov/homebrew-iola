# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Iola < Formula
  desc "Socket client with REST API"
  homepage "https://github.com/pvarentsov/iola"
  license "MIT"
  version "0.5.1"

  on_macos do
    url "https://github.com/pvarentsov/iola/releases/download/v0.5.1/iola-v0.5.1-macos-amd64.zip"
    sha256 "4f95b144068ff3d6edb68c34d5ba107434772ee34dc885eaddd736666d726c00"
  end

  on_linux do
    url "https://github.com/pvarentsov/iola/releases/download/v0.5.1/iola-v0.5.1-linux-amd64.zip"
    sha256 "da2d07ffd2a10c9aeaac16245035c235ccebb4a5d84b65a2157550d05e1d7937"
  end

  conflicts_with "iola"

  def install
    bin.install "iola"
  end

  test do
    system "#{bin}/iola --version"
  end
end
