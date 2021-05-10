# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.371.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.371.0/sysl_0.371.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "598381799f6852e7719dc37321081348b59c2981dbe3973f590bc4f4ea3bde5b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.371.0/sysl_0.371.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "45a2afca8ef3b32b990bd4788079210965d837928cf0fb859bcae04e025b036e"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
