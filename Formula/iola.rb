# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Iola < Formula
  desc "Socket client with REST API"
  homepage "https://github.com/pvarentsov/iola"
  url "https://github.com/pvarentsov/iola/releases/download/v0.4.2/TODO.tar.gz"
  sha256 "TODO hash"
  version "0.4.2"

  def install
    bin.install "iola"
  end
end
