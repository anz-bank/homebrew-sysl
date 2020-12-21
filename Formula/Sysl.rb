# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.300.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.300.0/sysl_0.300.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "e7c53dd721eeac222d486420df320b624583d2e8d2cc35fe708e443ddfe17f4d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.300.0/sysl_0.300.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "b3255809b8c822f25b8120dbbacfeec8e99696e324e3fffeb6f1c6a348f535c0"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
