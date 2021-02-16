require "language/node"

class GitPeek < Formula
  desc "git repo to local editor instantly"
  homepage "https://github.com/Jarred-Sumner/git-peek"
  url "https://github.com/Jarred-Sumner/git-peek/releases/download/1.3.6/git-peek-macOS"
  sha256 "361a46c436f5db7f30263034f426fa949d2db882e789e8fe1720d3e94e8f7a08"
  head "https://github.com/Jarred-Sumner/git-peek.git"
  license "MIT"

  livecheck do
    url :stable
  end

  depends_on "git"

  def install
    bin.install "git-peek-macOS" => "git-peek"
    system "git-peek -r"
  end

  test do
    system "git-peek -h"
  end
end
