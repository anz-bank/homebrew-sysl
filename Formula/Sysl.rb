# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.275.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.275.0/sysl_0.275.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "86d41b2999281fae8d3c7dfb589ce2b3876ec8516cb54537ef1dc08c29eca5c9"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.275.0/sysl_0.275.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "9baad25687600ae290763833b4c525fab51ad4c06921ca44117d0ef11232fa07"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
