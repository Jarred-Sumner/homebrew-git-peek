require "language/node"

class GitPeek < Formula
  desc "git repo to local editor instantly"
  homepage "https://github.com/Jarred-Sumner/git-peek"
  url "https://github.com/Jarred-Sumner/git-peek/releases/download/1.3.12/git-peek-macOS"
  head "https://github.com/Jarred-Sumner/git-peek.git"
  sha256 "5bc377ae96aeb27e22fdca800a8af0fb466ef548270efe1a1a3ee01117e29019"
  license "MIT"

  livecheck do
    url :stable
  end

  depends_on "git"

  def install
    bin.install "git-peek-macOS" => "git-peek"
  end

  def post_install
    puts "To add 1-click \"Peek\" buttons to GitHub:\n  1. Run git peek -r\n  2. Install the browser extension.\n=> https://github.com/Jarred-Sumner/1-click-from-github-to-editor"
  end

  test do
    system "git-peek -h"
  end
end
