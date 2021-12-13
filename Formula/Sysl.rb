# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.490.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.490.0/sysl_0.490.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "0e2417ed24446f4fcf1cf0bcc28722b0b25e753ecde4335fafdef100a2388a18"

      def install
        bin.install "sysl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.490.0/sysl_0.490.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "3b7db2f1f03d999fe0dbefa58933a00c704b2a012c650b0f5998f91dad9e67b1"

      def install
        bin.install "sysl"
      end
    end
  end

  test do
    system "#{bin}/sysl --version"
  end
end
