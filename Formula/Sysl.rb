# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.370.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.370.0/sysl_0.370.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "2c70af561b9a7c70a10a2629a071e1d6293994e54122c116f5f53a1733305cd6"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.370.0/sysl_0.370.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "fac9e2705fc820056cb159c8740fb5eae4379ce478f16cc0723806aeb974a816"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
