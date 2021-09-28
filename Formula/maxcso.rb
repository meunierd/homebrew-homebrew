class Maxcso < Formula
  desc "Fast cso compressor"
  homepage ""
  url "https://github.com/unknownbrackets/maxcso/archive/v1.13.0.tar.gz"
  sha256 "af9c05add1a1d199ec184d3471081af1b91d591b2473800ea989c882fb632730"

  depends_on "lz4"
  depends_on "libuv"

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "false"
  end
end
