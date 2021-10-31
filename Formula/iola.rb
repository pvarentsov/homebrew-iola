# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Iola < Formula
  desc "Socket client with REST API"
  homepage "https://github.com/pvarentsov/iola"
  license "MIT"
  version "0.5.5"

  on_linux do
    url "https://github.com/pvarentsov/iola/releases/download/v0.5.5/iola-v0.5.5-linux-amd64.zip"
    sha256 "9815a17d67f44901733584db10e7053a0bf2af4442a267a92eb9737c8247cfa6"
  end

  on_macos do
    url "https://github.com/pvarentsov/iola/releases/download/v0.5.5/iola-v0.5.5-macos-amd64.zip"
    sha256 "cfe9d0a5f9489c0c3a63a4a4a83a402f5c83cd88ac16f37165a24075c7b6d379"
  end

  conflicts_with "iola"

  def install
    bin.install "iola"
  end

  test do
    system "#{bin}/iola --version"
  end
end
