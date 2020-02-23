class Hactool < Formula
  desc "hactool is a tool to view information about, decrypt, and extract common file formats for the Nintendo Switch, especially Nintendo Content Archives."
  homepage ""
  url "https://github.com/SciresM/hactool/archive/1.3.1.tar.gz"
  sha256 "9c68d134293d62fbdc3f95943893d453aab08913edb823ce1662809a98f69e69"

  # depends_on "cmake" => :build

  def install
    system "cp", "config.mk.template", "config.mk"
    system "make"
    bin.install "hactool"
  end

  test do
    system "false"
  end
end
