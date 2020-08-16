# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.183.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.183.0/sysl_0.183.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "7015366e17c4c35de153bcad1e8572c5cdc542e775c3df896d23761e3626c3fa"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.183.0/sysl_0.183.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "ec786f5113306c0d7f92b703b79d7bffa84cc8970fbcf055ba32d18562c41f32"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
