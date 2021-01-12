class Isodump < Formula
  desc "PlayStation ISO Content Extraction Tool"
  homepage ""
  url "https://github.com/meunierd/isodump/archive/v0.32.tar.gz"
  sha256 "c758bdb26dfbd42e173fc00edeb7196d1a27327d47da066697573a16dd8a83e6"
  license "GPL-2.0"

  # depends_on "cmake" => :build

  def install
    system "make"
    bin.install "isodump"
  end

  test do
    system "false"
  end
end
