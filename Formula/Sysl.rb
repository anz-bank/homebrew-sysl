# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.85.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.85.0/sysl_0.85.0_macOS-64bit.tar.gz", :using => CurlDownloadStrategy
    sha256 "71adfba122c17e69c9eebc66e8c137135090a714799bf3c2a3898c26f5ccc586"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.85.0/sysl_0.85.0_Linux-64bit.tar.gz", :using => CurlDownloadStrategy
      sha256 "2873d4199dd20a4a16d7034a2c5d4d7298473aea3908c57888c471e225238927"
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
