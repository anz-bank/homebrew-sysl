# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.191.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.191.0/sysl_0.191.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "a9f7ae70ed07d3bf85b03bac176a0991d1123aba7efb2e9fb9a4d14db698c75e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.191.0/sysl_0.191.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "2cf37a91ace84702f755b270df9f2fd772acf21a0401b2b9c4eb80ca7c9fad08"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
