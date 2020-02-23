class Amitools < Formula
  include Language::Python::Virtualenv
  desc "Various tools for using AmigaOS programs on other platforms"
  homepage "http://lallafa.de/blog/amiga-projects/amitools/"
  version "0.4.0"
  url "https://files.pythonhosted.org/packages/1c/1a/64e5d06188a993ec56e088a6e02f52a5d3033d74f084aff2e4c5f488c4c5/amitools-0.4.0.zip"
  sha256 "420c7304e6927b0f38788bfac1754d15873cafd975778077f7d963f320f8b12b"

  resource "lhafile" do
    url "https://files.pythonhosted.org/packages/30/ec/ab17b1f9b64a22f9aaf7d5f5f0474f8014ed18f7fab070776b417202df1d/lhafile-0.2.2.tar.gz"
    sha256 "794763b52c386465921734bf83234d87731ba9cdc8808433c9c7fbf33fed1b9f"
  end

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "false"
  end
end
