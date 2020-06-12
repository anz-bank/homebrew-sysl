# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.108.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.108.0/sysl_0.108.0_macOS-64bit.tar.gz", :using => CurlDownloadStrategy
    sha256 "892bf7970aaca7bd363d068d621e8b2bb86be757b1e8aa9e7b00afef90d6508a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.108.0/sysl_0.108.0_Linux-64bit.tar.gz", :using => CurlDownloadStrategy
      sha256 "918f4da1060266e1c5161fc2b539f7cd9ca375cf560dc111fc03cf2f0bf7bdba"
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
