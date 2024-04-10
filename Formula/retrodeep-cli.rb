class RetrodeepCli < Formula
  include Language::Python::Virtualenv

  desc "RetroDeep CLI is a powerful, user-friendly command-line interface designed to supercharge your development workflow by enabling you to deploy, manage, and scale your applications directly from the terminal." 
  homepage "https://github.com/retrodeep-io/retrodeep-cli"
  url "https://github.com/retrodeep-io/retrodeep-cli/archive/refs/tags/v1.0.0-beta.1.tar.gz"
  sha256 "2763632a5d5902ed05ebd1e02dace54842553fccfdc02132bcc5660b9896abdd"
  license "MIT"
  version "1.0.0-beta.1"

  depends_on "python@3"

  def install
      virtualenv_create(libexec, "python3")
      system libexec/"bin/pip", "install", "-r", "requirements.txt", "--user"

      bin.install_symlink libexec/"bin/retrodeep" => "retrodeep"
  end

  test do
      system "#{bin}/retrodeep", "whoami"
  end
end