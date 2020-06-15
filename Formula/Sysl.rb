# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.109.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.109.0/sysl_0.109.0_macOS-64bit.tar.gz", :using => CurlDownloadStrategy
    sha256 "dd9411ffa314fabf90ce8228ab3882bee5063d1998e09aa948a15b466bde5e00"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.109.0/sysl_0.109.0_Linux-64bit.tar.gz", :using => CurlDownloadStrategy
      sha256 "78f7222d66de6d622a0443315ee2b8549d421e7b5fd36fe51398bd84085a372e"
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
