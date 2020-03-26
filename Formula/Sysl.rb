class Sysl < Formula
    desc "Sysl is a tool which generates code and documentation from system specifications"
    homepage "https://sysl.io/"
    version "0.24.0"
    bottle :unneeded
  
    if OS.mac?
      url "https://github.com/anz-bank/sysl/releases/download/v0.24.0/sysl_0.24.0_macOS-64bit.tar.gz", :using => CurlDownloadStrategy
      sha256 "9f1c35a32290a2cee74724851c9a7fce359caa8d8978cae8eecae31da34e6be8"
    elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/anz-bank/sysl/releases/download/v0.24.0/sysl_0.24.0_Linux-64bit.tar.gz", :using => CurlDownloadStrategy
        sha256 "70d42d2e68fa3c2bbc027c5bfe555856427b4072fa697f76951d04d390b5539a"
      end
    end
    
    depends_on "go"
  
    def install
      bin.install "sysl"
    end
  
    def caveats; <<~EOS
      How to use this binary
    EOS
    end
  
    test do
      system "#{bin}/sysl --version"
    end
  end
