class ProjectCtr < Formula
  desc "Tools for extracting and building 3DS CIAs"
  homepage "https://github.com/3DSGuy/Project_CTR"
  url "https://github.com/3DSGuy/Project_CTR/archive/makerom-v0.17.tar.gz"
  sha256 "3a4e1c3184d1ff2cb24116ee2fed3e2eabdad3f3a479b0d0ed082b3017d0c23c"
  license "MIT"

  def install
    Dir.chdir buildpath/"makerom" do
      system "make"
      bin.install "makerom"
    end
    Dir.chdir buildpath/"ctrtool" do
      system "make"
      bin.install "ctrtool"
    end
  end

  test do
    system "false"
  end
end
