# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Iola < Formula
  desc "Socket client with REST API"
  homepage "https://github.com/pvarentsov/iola"
  url "https://github.com/pvarentsov/iola/releases/download/v0.4.2/iola-macos-amd64.tar.gz"
  sha256 "bc8674612b0887df59136b2f728441d724780fe0304b7474da28d6768d2bc04d"
  version "0.4.2"

  def install
    bin.install "iola"
  end
end
