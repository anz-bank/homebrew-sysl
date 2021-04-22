# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.357.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.357.0/sysl_0.357.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "062e292a01fd0447831db585527b6e7102a571e0eb9e9d7f330f7e66509e208c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.357.0/sysl_0.357.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "d40b64bc43dcb98a1708a6dff7ecec04ab81b68c13f149b2fda40230e09eb865"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
