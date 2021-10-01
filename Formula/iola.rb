# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Iola < Formula
  desc "Socket client with REST API"
  homepage "https://github.com/pvarentsov/iola"
  license "MIT"
  version "0.5.2"

  on_linux do
    url "https://github.com/pvarentsov/iola/releases/download/v0.5.2/iola-v0.5.2-linux-amd64.zip"
    sha256 "ce83deabc37851b9dbc96434ecc750083a75164f156b643d8fe34bb122801a9d"
  end

  on_macos do
    url "https://github.com/pvarentsov/iola/releases/download/v0.5.2/iola-v0.5.2-macos-amd64.zip"
    sha256 "821b5553ac6b7d327f55650ea5acf4c06c27f96799f35d32962fcbc1fc4db8be"
  end

  conflicts_with "iola"

  def install
    bin.install "iola"
  end

  test do
    system "#{bin}/iola --version"
  end
end
