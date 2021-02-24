# This file was generated by GoReleaser. DO NOT EDIT.
class Sysl < Formula
  desc "Sysl generates code and documentation from system specifications"
  homepage "https://sysl.io/"
  version "0.336.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/anz-bank/sysl/releases/download/v0.336.0/sysl_0.336.0_darwin-amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "931c185e1d547520296b4486b4aa916b441d96df105595496d48c9b85e58fe42"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/anz-bank/sysl/releases/download/v0.336.0/sysl_0.336.0_linux-amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "21e4b575474d16491b40378d9acb3cf89ad94eccd099e68ac2cdf35bb2d99c1c"
    end
  end

  def install
    bin.install "sysl"
  end

  test do
    system "#{bin}/sysl --version"
  end
end
