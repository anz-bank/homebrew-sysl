# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.655.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.655.0/sysl_0.655.0_darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0c6ab2a6647c54e717eb32c9fc2a15e24dc56c6224661ba26c532b3b6f7859d6"

      def install
        bin.install "sysl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/anz-bank/sysl/releases/download/v0.655.0/sysl_0.655.0_darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6607b1d3738514623a79fefc40164d1683b8c7c097fffd7294425d0b80c01b5b"

      def install
        bin.install "sysl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.655.0/sysl_0.655.0_linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ebd589cb9d11c0721cee25436e87cd81a7b499e6b5b1f56fea9ab669ea1d715d"

      def install
        bin.install "sysl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anz-bank/sysl/releases/download/v0.655.0/sysl_0.655.0_linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "beadaf3ab9a5193b6e5abcd08595caecb2cbae1c442dd815cfda790b478b62ed"

      def install
        bin.install "sysl"
      end
    end
  end

  test do
    system "#{bin}/sysl --version"
  end
end
