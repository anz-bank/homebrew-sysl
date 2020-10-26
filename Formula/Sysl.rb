# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.254.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.254.0/sysl_0.254.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "3eb371f4550f80a0bcc3f6008054d35201934a32f8d0e0a3d0a41558d3b47c73"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.254.0/sysl_0.254.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "5659a93200cf4e55815d86de26f958fc58a8c5ab0ff9cf669db1624e77b06f97"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
