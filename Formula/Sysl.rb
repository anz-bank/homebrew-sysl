# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.415.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.415.0/sysl_0.415.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "f3f8347f93c20547461b61c21a370d7943337e4bad999f12acdea3c1f62640b2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.415.0/sysl_0.415.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "73d5d05b516632c6754e22b5738a5dbc22c809861d473f155b3e4f486b4f89ea"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
