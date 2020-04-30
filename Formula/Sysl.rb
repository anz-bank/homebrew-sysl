# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.71.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.71.0/sysl_0.71.0_macOS-64bit.tar.gz", :using => CurlDownloadStrategy
    sha256 "7a2eb6fef4d1c814c994d32661dfc3ac566b8121b0feb1e8d7dfdb7f903b4c87"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.71.0/sysl_0.71.0_Linux-64bit.tar.gz", :using => CurlDownloadStrategy
      sha256 "abcf0ebf9182ed6b37f62c114043980c44ab463ed4206a9a378c25eb9057e491"
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
