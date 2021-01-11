# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.306.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.306.0/sysl_0.306.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "32cd8cc0c3844e453184d5e03fc371cd76b3c47d6f735948ce806b93af6a0d09"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.306.0/sysl_0.306.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "5fae27cc35b9bf4045ec9e9033ff9c44e9edf2a935e822aff4efd3c24689fb45"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
