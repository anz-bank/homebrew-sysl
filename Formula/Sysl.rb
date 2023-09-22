# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.698.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anz-bank/sysl/releases/download/v0.698.0/sysl_0.698.0_darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fa7fc746a792a8cc5ac9c3b8c24ade578ebf3ea1d5bad1c55877bfeda5a8ce48"

      def install
        bin.install "sysl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.698.0/sysl_0.698.0_darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5a881de99b0bca2deadd0b119839f5188c7deb6ce3748852b66506d22012a94a"

      def install
        bin.install "sysl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anz-bank/sysl/releases/download/v0.698.0/sysl_0.698.0_linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "cf2d6279355634abc8ea3660d3f1534dbb0bc932dedd04a8f57e7fb37eda1577"

      def install
        bin.install "sysl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.698.0/sysl_0.698.0_linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6ba0c0554da488ba4281fd869dec71ff0b332ef0018ba2d6acc61ea5378582ef"

      def install
        bin.install "sysl"
      end
    end
  end

  test do
    system "#{bin}/sysl --version"
  end
end
