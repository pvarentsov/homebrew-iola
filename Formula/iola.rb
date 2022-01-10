# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Iola < Formula
  desc "Socket client with REST API"
  homepage "https://github.com/pvarentsov/iola"
  license "MIT"
  version "0.5.7"

  on_linux do
    url "https://github.com/pvarentsov/iola/releases/download/v0.5.7/iola-v0.5.7-linux-amd64.zip"
    sha256 "06d91835fe64ce097e152ec95ddfbbff1fe8aacb40e96c7ffb5ee7088cd96f92"
  end

  on_macos do
    url "https://github.com/pvarentsov/iola/releases/download/v0.5.7/iola-v0.5.7-macos-amd64.zip"
    sha256 "75e97e26e2937196f368ce2ab0b873182c8c683c613a34a60cd2ff2fad36165a"
  end

  conflicts_with "iola"

  def install
    bin.install "iola"
  end

  test do
    system "#{bin}/iola --version"
  end
end
