class Armips < Formula
  desc "An assembler for various ARM and MIPS platforms. Builds available at http://buildbot.orphis.net/armips/"
  homepage "https://github.com/Kingcom/armips/"
  url "https://github.com/Kingcom/armips/archive/v0.10.0.tar.gz"
  sha256 "73111ea551237dde5ff214c4fcbf6b87ef0b74906b404235b3eb0baa6d6c20b6"
  head "https://github.com/Kingcom/armips.git"

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make"
      bin.install "armips"
    end
  end

  test do
    system "false"
  end
end
