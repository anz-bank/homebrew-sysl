# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.736.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anz-bank/sysl/releases/download/v0.736.0/sysl_0.736.0_darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "993d96cd098998274ad513d0e434dca6c859b2c9984ba50789a910bcde07c38e"

      def install
        bin.install "sysl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.736.0/sysl_0.736.0_darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7b2103287d791f0120e4697ff84d7a7c98f6607f7c3287415caf28890c2549e3"

      def install
        bin.install "sysl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anz-bank/sysl/releases/download/v0.736.0/sysl_0.736.0_linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "61897457b0d57d3c7138640bbf08c0ffebc4aed28762caa7ed889609afd48554"

      def install
        bin.install "sysl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.736.0/sysl_0.736.0_linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "fe9335ba97eb6e7018bae8b724e4aa36e443bcac8de994c5ed6f254b52cab0c1"

      def install
        bin.install "sysl"
      end
    end
  end

  test do
    system "#{bin}/sysl --version"
  end
end
