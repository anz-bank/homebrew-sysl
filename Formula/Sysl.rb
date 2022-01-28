# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.509.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anz-bank/sysl/releases/download/v0.509.0/sysl_0.509.0_darwin-arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "8847aa187a7e7bf3ddce240a99d2b3318e17afadd4d192c81c42d8e283a6987d"

      def install
        bin.install "sysl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.509.0/sysl_0.509.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "626e4be327622043340075caf7e3e0aafb2661397e458dd3c045cfaa62607ea6"

      def install
        bin.install "sysl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anz-bank/sysl/releases/download/v0.509.0/sysl_0.509.0_linux-arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "0b36dacffdaff6918c188e3e2873d6f1dd89b1f5fa3cbda4483342177d16fb33"

      def install
        bin.install "sysl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.509.0/sysl_0.509.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "acf481cb1292f07a05fc05e41bf106014e629939189cd041155d8bc72b8fbc2e"

      def install
        bin.install "sysl"
      end
    end
  end

  test do
    system "#{bin}/sysl --version"
  end
end
