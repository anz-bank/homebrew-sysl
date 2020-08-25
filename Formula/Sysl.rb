# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.194.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.194.0/sysl_0.194.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "f664b8ee4bdce061c0a8e433ef7f79db8fef72a6111ef8b4c80444d3a13f253d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.194.0/sysl_0.194.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "3b937fe8b27f6c67fe4c8ec23ae4ec7967003f5c63277faa849239d950d97a15"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
