# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.492.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.492.0/sysl_0.492.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "2f9f3e4647d93184149f15e495f6ba89446bc5d43273dcb73b968a1dd6bff62a"

      def install
        bin.install "sysl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.492.0/sysl_0.492.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "44e18b6bbcdbc3193ee9bfc34299cc47c8a415e392b48a216b2341cbea85cf48"

      def install
        bin.install "sysl"
      end
    end
  end

  test do
    system "#{bin}/sysl --version"
  end
end
