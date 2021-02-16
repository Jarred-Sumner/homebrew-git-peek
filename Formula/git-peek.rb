require "language/node"

class GitPeek < Formula
  desc "git repo to local editor instantly"
  homepage "https://github.com/Jarred-Sumner/git-peek"
  url "https://registry.npmjs.org/@jarred/git-peek/-/git-peek-1.3.3.tgz"
  sha256 "72fe7877b6a7f295a2c341e0a568da8c071d75beec04a22bb6cd9f30d0460d5b"
  head "https://github.com/Jarred-Sumner/git-peek.git"
  license "MIT"

  livecheck do
    url :stable
  end

  depends_on "node"
  depends_on "git"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "git-peek -h"
  end
end
