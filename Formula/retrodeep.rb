class Retrodeep < Formula
  desc "RetroDeep CLI is a powerful, user-friendly command-line interface designed to supercharge your development workflow by enabling you to deploy, manage, and scale your applications directly from the terminal." 
  homepage "https://github.com/retrodeep-io/retrodeep-cli"
  url "URL to the tar.gz file of your release"
  sha256 "2763632a5d5902ed05ebd1e02dace54842553fccfdc02132bcc5660b9896abdd"
  license "MIT"
  version "1.0.0-beta.1"

  def install
    bin.install "retrodeep"
  end

  test do
    system "#{bin}/retrodeep", "whoami"
  end
end