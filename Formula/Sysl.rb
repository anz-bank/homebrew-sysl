# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.680.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anz-bank/sysl/releases/download/v0.680.0/sysl_0.680.0_darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ebb6ae42da32732c55869f6592f37fec21631d2a2a5066b1c321fe7ff2bd2f67"

      def install
        bin.install "sysl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.680.0/sysl_0.680.0_darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8720d6b7c20956d5e3c24c223d90423e403baa410b8423435f9697df16b9d02d"

      def install
        bin.install "sysl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.680.0/sysl_0.680.0_linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "80bbbdafe8564f22c45043e5784ed6a0bb5f7e7f42f25c5e015c941bf07af3ab"

      def install
        bin.install "sysl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anz-bank/sysl/releases/download/v0.680.0/sysl_0.680.0_linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "94165dd54300d4df1e1da56d2e718c56199980186519610b6b32cb66d4e926cb"

      def install
        bin.install "sysl"
      end
    end
  end

  test do
    system "#{bin}/sysl --version"
  end
end
