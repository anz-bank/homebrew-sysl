# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.495.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.495.0/sysl_0.495.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "473d5ed43319a237a3907bfc2d6f46c4a8998a8d4ca2efac07caad512330b5e6"

      def install
        bin.install "sysl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.495.0/sysl_0.495.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "3ca48bf28d217263743a486eb74a77c4a16b3cdb249d3f694b09000e2ec76c21"

      def install
        bin.install "sysl"
      end
    end
  end

  test do
    system "#{bin}/sysl --version"
  end
end
