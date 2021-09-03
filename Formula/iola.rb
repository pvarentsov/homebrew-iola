# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Iola < Formula
  desc "Socket client with REST API"
  homepage "https://github.com/pvarentsov/iola"
  url "https://github.com/pvarentsov/iola/releases/download/v0.5.0/iola-macos-amd64.tar.gz"
  sha256 "1d76e927153eaf722eeff6c32399dbb6886d8fec916113c048305aba3d3e6759"
  version "0.5.0"

  def install
    bin.install "iola"
  end
end
