class Armips < Formula
  desc "An assembler for various ARM and MIPS platforms. Builds available at http://buildbot.orphis.net/armips/"
  homepage "https://github.com/Kingcom/armips/"
  url "https://github.com/Kingcom/armips/archive/v0.11.0.tar.gz"
  sha256 "c94e29dfda3bdf853590d825562b9c73a3d8e8e995555e021c6b2a6451572681"
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
