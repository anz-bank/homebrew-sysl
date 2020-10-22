# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.253.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.253.0/sysl_0.253.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "f9582a748590480220634ca54e1c9cdc58873336690159b3b40785a78e46c63e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.253.0/sysl_0.253.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "ef95ffcf619da09c93eb67721978b38933eeebad35c5ac7ee72d2bd0f18e06df"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
