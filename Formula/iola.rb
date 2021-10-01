# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Iola < Formula
  desc "Socket client with REST API"
  homepage "https://github.com/pvarentsov/iola"
  license "MIT"
  version "0.5.4"

  on_linux do
    url "https://github.com/pvarentsov/iola/releases/download/v0.5.4/iola-v0.5.4-linux-amd64.zip"
    sha256 "6579008e6a0b72c4ea85c4e6e88f7f63a96fee4dfc89d2f204e72e60f3eb5744"
  end

  on_macos do
    url "https://github.com/pvarentsov/iola/releases/download/v0.5.4/iola-v0.5.4-macos-amd64.zip"
    sha256 "dcd4d458c5e1b599a4e66997904e51838abe3217b09806fffe0b2b29f924510f"
  end

  conflicts_with "iola"

  def install
    bin.install "iola"
  end

  test do
    system "#{bin}/iola --version"
  end
end
