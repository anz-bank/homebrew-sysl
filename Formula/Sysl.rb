# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.685.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anz-bank/sysl/releases/download/v0.685.0/sysl_0.685.0_darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "144191dbfcf983e426f16fb4aaa3ebc98a966dca5b96606289cb84dc3d6f7c05"

      def install
        bin.install "sysl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.685.0/sysl_0.685.0_darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "298797f377200b0fc9e35a82e5ed7092d4f5e441eea81e7e1b559bc3903c5f85"

      def install
        bin.install "sysl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anz-bank/sysl/releases/download/v0.685.0/sysl_0.685.0_linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3d610db4ff8db87d8bbf346f7e37f7e2a02d0d10024d06ce93d2b360a3ae8b8c"

      def install
        bin.install "sysl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.685.0/sysl_0.685.0_linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "14e270409f0ed76e2d83dab6f626548a4b3d10bf63b29aa79b3d2ecd464be9ff"

      def install
        bin.install "sysl"
      end
    end
  end

  test do
    system "#{bin}/sysl --version"
  end
end
