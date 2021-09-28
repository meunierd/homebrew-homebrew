class Cue2popsLinux < Formula
  desc "cue2pops working for linux. Also a try to refactor the program into something sane"
  homepage ""
  url "https://github.com/meunierd/cue2pops-linux/archive/refs/tags/v2.0.tar.gz"
  sha256 "fd51461a1e88375ffb12e80eea32ce74e26230a266649962429d7b672545829e"
  license ""

  def install
    system "make"
    bin.install "cue2pops"
  end

  test do
    system "false"
  end
end
