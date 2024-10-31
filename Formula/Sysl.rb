# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.765.0"

  on_macos do
    on_intel do
      url "https://github.com/anz-bank/sysl/releases/download/v0.765.0/sysl_0.765.0_darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a635e5b151d7784f22eddc706d34f569b52b57467179eeda8b2fb815a4996f27"

      def install
        bin.install "sysl"
      end
    end
    on_arm do
      url "https://github.com/anz-bank/sysl/releases/download/v0.765.0/sysl_0.765.0_darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d09098a927c3e4b1db0184a0006007e91327c26ef1d7e0dc77d5baecac234dd3"

      def install
        bin.install "sysl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/anz-bank/sysl/releases/download/v0.765.0/sysl_0.765.0_linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "36786fff5087e176fe7ece869541b5764a9ab1ae6a74ec8804d5f03aa433fc3d"

        def install
          bin.install "sysl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/anz-bank/sysl/releases/download/v0.765.0/sysl_0.765.0_linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "868580f10c2112d000acb408ab26c1428b24391b2e999855d040fb70df07fc70"

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
