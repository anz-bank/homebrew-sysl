# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.494.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.494.0/sysl_0.494.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "113707ba5a199960a0c79eb62a1d36771ea4a1c5dce1c67ad940c0ec932577b0"

      def install
        bin.install "sysl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.494.0/sysl_0.494.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "134459f5121f3e9dd2711053406ae6204aae3689f62dd95d8ba62c07283efab9"

      def install
        bin.install "sysl"
      end
    end
  end

  test do
    system "#{bin}/sysl --version"
  end
end
