# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Iola < Formula
  desc "Socket client with REST API"
  homepage "https://github.com/pvarentsov/iola"
  url "https://github.com/pvarentsov/iola/releases/download/v0.4.2/iola-macos-amd64.tar.gz"
  sha256 "548c0c499888d1bf6886a04146eb0b17d8704831b82f3401705d02c59ec3ab29"
  version "0.4.2"

  def install
    bin.install "iola"
  end
end
