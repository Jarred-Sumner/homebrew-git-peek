require "language/node"

class GitPeek < Formula
  desc "git repo to local editor instantly"
  homepage "https://github.com/Jarred-Sumner/git-peek"
  url "https://github.com/Jarred-Sumner/git-peek/releases/download/1.3.10/git-peek-macOS"
  head "https://github.com/Jarred-Sumner/git-peek.git"
  sha256 "81a64aec02baa30b06704c6139337428cde1aec7f604757d170e79705b6384a0"
  license "MIT"

  livecheck do
    url :stable
  end

  depends_on "git"

  def install
    bin.install "git-peek-macOS" => "git-peek"
  end

  def post_install
    system "git-peek --register --postinstall"
  end

  test do
    system "git-peek -h"
  end
end
