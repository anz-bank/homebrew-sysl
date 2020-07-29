# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.160.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.160.0/sysl_0.160.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "f86127fec9b7237c2bbeabe8353ab97a6f1a78afdb29742869f20737f75f857c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.160.0/sysl_0.160.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "83f66674cc213cbb8ee6bc5e3d3a74ff5651774ded336e4ae1a4b39a6cbaa616"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
