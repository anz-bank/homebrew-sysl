# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.375.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.375.0/sysl_0.375.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "cc064d3176f6114fc09469fdfcfcdc7f1f8dae50d9078d45b338f299e98d3579"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.375.0/sysl_0.375.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "b363cc67e36aea8684e5ced51f2a8daaa3aa097092c48ee6b87e2099056ba893"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
