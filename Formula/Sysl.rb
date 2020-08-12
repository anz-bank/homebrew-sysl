# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.181.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.181.0/sysl_0.181.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "088081195ef53a7ed4045fe336a521c6694e660e375202fcab1625851f336770"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.181.0/sysl_0.181.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "0fe2878ef2c6a935af73cf70ceb782e0c1123262284a7e6f029456d4a6c4ff6f"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
