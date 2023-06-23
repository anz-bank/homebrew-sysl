# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.660.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anz-bank/sysl/releases/download/v0.660.0/sysl_0.660.0_darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "bacd7309480d933fdae352d9488a5a06760da322edae3b0cbe413675df909ba5"

      def install
        bin.install "sysl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.660.0/sysl_0.660.0_darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2de917e9a9627a0c621dbccbcd8fa2ae8f61ca9005a859b44c7c98d9c8bd2e2c"

      def install
        bin.install "sysl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.660.0/sysl_0.660.0_linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4adc07ce8dd94614cab0650d63adafffde06b74f1727ed07423bced7afeed074"

      def install
        bin.install "sysl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anz-bank/sysl/releases/download/v0.660.0/sysl_0.660.0_linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "578ee675b93c6c4eb81c1fdf95fed9bae15f09d950179f043f1e9dd1edc126eb"

      def install
        bin.install "sysl"
      end
    end
  end

  test do
    system "#{bin}/sysl --version"
  end
end
