class FourNxci < Formula
  desc "4NXCI is a tool for converting XCI(NX Card Image) files to NSP"
  homepage "https://github.com/The-4n/4NXCI"
  url "https://github.com/The-4n/4NXCI/archive/v4.03.tar.gz"
  sha256 "284156dd87aee8feb14163c31cc69eb50aefc395056bc0121aa1db9b3978ad21"

  def install
    cp "config.mk.template", "config.mk"
    system "make"
    bin.install "4nxci" 
  end

  test do
    system "false"
  end
end
