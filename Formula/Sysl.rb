# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.475.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.475.0/sysl_0.475.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "fda146b1b006792b93d31fccf0f56630325026310222e496ababe01ffe5bd0cc"

      def install
        bin.install "sysl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.475.0/sysl_0.475.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "e8534dc9e1239c38b7383d5bb58e88d4c849176ac8d1e870a0c6bbaa0823c0d8"

      def install
        bin.install "sysl"
      end
    end
  end

  test do
    system "#{bin}/sysl --version"
  end
end
