# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.97.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.97.0/sysl_0.97.0_macOS-64bit.tar.gz", :using => CurlDownloadStrategy
    sha256 "7a573ec300bfafde097ecba826c759cdf891153f170f43dfa08097ade2222a98"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.97.0/sysl_0.97.0_Linux-64bit.tar.gz", :using => CurlDownloadStrategy
      sha256 "a0ba662aa11703587bee1dc17a0c844fe5cc0402ec01d16cd0a1b6b5dc67798b"
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
