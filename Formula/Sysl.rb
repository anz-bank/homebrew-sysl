# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.404.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.404.0/sysl_0.404.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "bb6579a7135433f5f805c6481096b68518a00b9fddc556dfef4ec5dfcdf2d275"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.404.0/sysl_0.404.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "e4c169e72dfeb401593ec6d6fc4ada278821c665b15b180eec4e93284df68326"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
