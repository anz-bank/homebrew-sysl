# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.711.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.711.0/sysl_0.711.0_darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "93ed3777a8aa96c1f746e0beb3f06e31166aab468fb05b86acc9ca2897ddd3ea"

      def install
        bin.install "sysl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anz-bank/sysl/releases/download/v0.711.0/sysl_0.711.0_darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "19572f539dfecd5ca9a2e202f050a6ddedb3a89fcd8361327d85b76b47412f5e"

      def install
        bin.install "sysl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.711.0/sysl_0.711.0_linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2c4ae81f592e88fa8594c88a46e6084f2e40dd65e681322917c582eba850a33a"

      def install
        bin.install "sysl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anz-bank/sysl/releases/download/v0.711.0/sysl_0.711.0_linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a0a953715d41c67978cd891e7dc869b322985b63f8a67443276d2b872cec20e7"

      def install
        bin.install "sysl"
      end
    end
  end

  test do
    system "#{bin}/sysl --version"
  end
end
