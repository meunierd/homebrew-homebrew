class Maxcso < Formula
  desc "Fast cso compressor"
  homepage ""
  url "https://github.com/unknownbrackets/maxcso/archive/v1.11.0.tar.gz"
  sha256 "5b14674674cc269e8436f1454f3d0386291141fa3a1ad320f6f4de151e3ac3e1"

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
