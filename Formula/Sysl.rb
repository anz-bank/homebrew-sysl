# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.764.0"

  on_macos do
    on_intel do
      url "https://github.com/anz-bank/sysl/releases/download/v0.764.0/sysl_0.764.0_darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7927270202d4b48238af77343b64b6c99907851735ed79ff4930da7bb7482a1f"

      def install
        bin.install "sysl"
      end
    end
    on_arm do
      url "https://github.com/anz-bank/sysl/releases/download/v0.764.0/sysl_0.764.0_darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3f15cc952e4210da3b493c99553da60b6aa8b53fa29bcdfdffb4edb378c0087b"

      def install
        bin.install "sysl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/anz-bank/sysl/releases/download/v0.764.0/sysl_0.764.0_linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "4bd45ed2bba1c7e39fa2d68cc390a3e41b7bc61c880372b179ab5b1292fea201"

        def install
          bin.install "sysl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/anz-bank/sysl/releases/download/v0.764.0/sysl_0.764.0_linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "6bd8f94c627f5ed5aa6db2e24c2318c2231e3cdd89b29cb48314fe2f692a5fea"

        def install
          bin.install "sysl"
        end
      end
    end
  end

  test do
    system "#{bin}/sysl --version"
  end
end
