# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.374.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.374.0/sysl_0.374.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "53da076b2d2dd09470410199cf96f8010b6aebe5591659a2dc57fe9eb3d9514a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.374.0/sysl_0.374.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "c8aac58559e3798b7d83b06a7f5004beda388417cc43ff1856d125869d920c85"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
