class Mkpsxiso < Formula
  desc "An ISO Image Maker Made Specifically for PlayStation Homebrew Development"
  homepage ""
  url "https://github.com/meunierd/mkpsxiso/archive/v1.26.tar.gz"
  sha256 "d8b502e8c878458f37fff74eb5a18f0e4dad8dedbf00b1d7d63a1ca198497720"
  license "GPL-2.0"
  head "https://github.com/meunierd/mkpsxiso.git"

  depends_on "tinyxml2"
  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    bin.install "bin_nix/mkpsxiso"
  end

  test do
    system "false"
  end
end
