# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.49.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.49.0/sysl_0.49.0_macOS-64bit.tar.gz", :using => CurlDownloadStrategy
    sha256 "d5c0b1215f7af9f8cccf9b769d4865ab3d8cc2c47d44bdb146d60303e55efe44"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.49.0/sysl_0.49.0_Linux-64bit.tar.gz", :using => CurlDownloadStrategy
      sha256 "0c4b9dcd79e92313560fea3282b86fc5f4d5792d9a6ddbbab1529991923bef1e"
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
