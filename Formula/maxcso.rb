class Maxcso < Formula
  desc "Fast cso compressor"
  homepage ""
  url "https://github.com/unknownbrackets/maxcso/archive/v1.12.0.tar.gz"
  sha256 "e55b3ff8da6337f23da0fd2c51ee31571aba536b18b0039b9353b61b6fec7cb3"

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
