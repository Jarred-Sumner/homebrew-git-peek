require "language/node"

class GitPeek < Formula
  desc "git repo to local editor instantly"
  homepage "https://github.com/Jarred-Sumner/git-peek"
  url "https://github.com/Jarred-Sumner/git-peek/releases/download/1.3.8/git-peek-macOS"
  head "https://github.com/Jarred-Sumner/git-peek.git"
  # sha256 "361a46c436f5db7f30263034f426fa949d2db882e789e8fe1720d3e94e8f7a08"
  license "MIT"

  livecheck do
    url :stable
  end

  depends_on "git"

  def install
    bin.install "git-peek-macOS" => "git-peek"
  end

  test do
    system "git-peek -h"
  end
end
