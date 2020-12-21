class WiimmsIsoTools < Formula
  desc "git-svn mirror of http://opensvn.wiimm.de/wii/trunk/wiimms-iso-tools/"
  homepage "https://wit.wiimm.de/"
  url "https://github.com/meunierd/wiimms-iso-tools/archive/v3.02a.tar.gz"
  sha256 "4079b3cec693b61e95acff39411233868be456db877ef5247789c169d0adfa91"

  def install
    system "make"
    bin.install "wwt"
    bin.install "wit"
    bin.install "wdf"
  end

  test do
    system "false"
  end
end
