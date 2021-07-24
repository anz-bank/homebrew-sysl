# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.414.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.414.0/sysl_0.414.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "5707a36e24c3c0d51868c5c94266dc24428386d6b3c0fc88eab28c9f14790a08"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.414.0/sysl_0.414.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "2f9c6d6041a42fe114c9fa444ab9ce86d076f01b634f3703f67e484b9bc194e0"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
