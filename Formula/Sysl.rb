# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.50.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.50.0/sysl_0.50.0_macOS-64bit.tar.gz", :using => CurlDownloadStrategy
    sha256 "fae004d9538be07791f483e878912ac2006c59e9ed27a06f037f89eb7f7c2cb1"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.50.0/sysl_0.50.0_Linux-64bit.tar.gz", :using => CurlDownloadStrategy
      sha256 "119c15b09441a98afe85491a1d1c87bf83d4ebbf17c77d67cfb380fb06af50ce"
    end
  end
  
  depends_on "go"

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
