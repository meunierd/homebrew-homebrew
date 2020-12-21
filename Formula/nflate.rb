class Nflate < Formula
  desc "KingMike's NES ROM expansion tool"
  homepage "https://github.com/meunierd/nflate"
  url "https://github.com/meunierd/nflate/archive/v1.01.tar.gz"
  sha256 "15282f4a8e1e57699bf980147b53a17c68935273574b49e5700e386ecac68a14"

  def install
    system "g++", "nflate.cpp", "-onflate"
    bin.install "nflate"
  end

  test do
    system "false"
  end
end
