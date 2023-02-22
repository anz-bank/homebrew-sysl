# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.627.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.627.0/sysl_0.627.0_darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b475b773ad0434859ed722b43d821891f9dabe86b486a7d90e82dcc1dbc8a2cf"

      def install
        bin.install "sysl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anz-bank/sysl/releases/download/v0.627.0/sysl_0.627.0_darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3da035022b890b609bc65719290e222db07c8d49b5dbbb54575c7ffc210bab13"

      def install
        bin.install "sysl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.627.0/sysl_0.627.0_linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5e2b8d16d0ae647cd676eb37b067fdea09d1f95ac54ccc374acfd974be4cf148"

      def install
        bin.install "sysl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anz-bank/sysl/releases/download/v0.627.0/sysl_0.627.0_linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9065bbcca2daee76c1af89a3db26292df68da5df3818ec5dcfd3b825557fe586"

      def install
        bin.install "sysl"
      end
    end
  end

  test do
    system "#{bin}/sysl --version"
  end
end
