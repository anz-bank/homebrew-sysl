# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.130.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.130.0/sysl_0.130.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "5ecf98d76ab21dfb1a4405fe4252c9e9d7cba2e89cae75da0d5fabb86aac0763"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.130.0/sysl_0.130.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "d9502b1caf921276b25a71ee767c84dfe3a9144dda2bf5ada93ca942dad411c8"
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
