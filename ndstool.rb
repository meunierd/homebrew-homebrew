class Ndstool < Formula
  desc "Utility for inspecting, extracting, and packing Nintendo DS ROMs"
  homepage "https://www.darkfader.net/ds/"
  url "https://github.com/devkitPro/ndstool/archive/v2.1.2.tar.gz"
  head "https://github.com/devkitPro/ndstool.git"
  sha256 "e58196e1287edbf54a965b28b4b2e92c0df7c6d8e9e1a40fccc37c5aa05f9ebc"

  depends_on "autoconf" => :build
  depends_on "automake" => :build

  def install
    system "sh", "autogen.sh"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "false"
  end
end
