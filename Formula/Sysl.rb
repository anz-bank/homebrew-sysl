# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.93.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.93.0/sysl_0.93.0_macOS-64bit.tar.gz", :using => CurlDownloadStrategy
    sha256 "76aace5b941a8029aa2e1b009123d89d6301404052fe773abf7811ff1b00b2db"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.93.0/sysl_0.93.0_Linux-64bit.tar.gz", :using => CurlDownloadStrategy
      sha256 "f3700b5a59d592bb94729a717a930d14e65c19063bbefb36dfb553bad4e9b392"
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
