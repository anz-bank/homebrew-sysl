# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.146.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.146.0/sysl_0.146.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "3e7f14728616cc5ef17feaa914569c9eed12d0d6b2f46bf1d67618ed34413fd1"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.146.0/sysl_0.146.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "0ceeb375f317032af5693e50c7998bf20064e3b6b77184dbcfe6ef576aa86b86"
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
