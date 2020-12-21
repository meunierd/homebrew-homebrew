class Threedstool < Formula
  desc "An all-in-one tool for extracting/creating 3ds roms."
  homepage ""
  url "https://github.com/dnasdw/3dstool/archive/v1.2.6.tar.gz"
  sha256 "7f6118bfe7b8e1ba87aa547a8cb892c29c9cc45ad817ee822121fa2142044859"
  license "MIT"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    bin.install "bin/Release/3dstool"
  end

  test do
    system "false"
  end
end
