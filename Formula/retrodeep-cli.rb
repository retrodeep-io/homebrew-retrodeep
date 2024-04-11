class RetrodeepCli < Formula
  include Language::Python::Virtualenv

  desc "RetroDeep CLI is a powerful, user-friendly command-line interface designed to supercharge your development workflow by enabling you to deploy, manage, and scale your applications directly from the terminal." 
  homepage "https://github.com/retrodeep-io/retrodeep-cli"
  url "https://github.com/retrodeep-io/retrodeep-cli/archive/refs/tags/v1.0.0-beta.1.tar.gz"
  sha256 "e35595afb6778dcb6753af10ae72a23f1c2eda1df68ed2d3a9eebde0b8f54d2e"
  license "MIT"
  version "1.0.0-beta.1"

  depends_on "python@3.9"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/7a/50/7fd50a27caa0652cd4caf224aa87741ea41d3265ad13f010886167cfcc79/urllib3-2.2.1.tar.gz"
    sha256 "d0570876c61ab9e520d776c38acbbb5b05a776d3f9ff98a5c8fd5162a444cf19"
  end

  resource "PyGithub" do
    url "https://files.pythonhosted.org/packages/5c/fb/3af782cd3c0f2c19bc54c640af33513369d240ca748f39c0b38b371e5d1d/PyGithub-2.3.0.tar.gz"
    sha256 "0148d7347a1cdeed99af905077010aef81a4dad988b0ba51d4108bf66b443f7e"
  end

  resource "datetime" do
    url "https://files.pythonhosted.org/packages/2f/66/e284b9978fede35185e5d18fb3ae855b8f573d8c90a56de5f6d03e8ef99e/DateTime-5.5.tar.gz"
    sha256 "21ec6331f87a7fcb57bd7c59e8a68bfffe6fcbf5acdbbc7b356d6a9a020191d3"
  end

  resource "questionary" do
    url "https://files.pythonhosted.org/packages/84/d0/d73525aeba800df7030ac187d09c59dc40df1c878b4fab8669bdc805535d/questionary-2.0.1.tar.gz"
    sha256 "bcce898bf3dbb446ff62830c86c5c6fb9a22a54146f0f5597d3da43b10d8fc8b"
  end

  resource "uuid" do
    url "https://files.pythonhosted.org/packages/ce/63/f42f5aa951ebf2c8dac81f77a8edcc1c218640a2a35a03b9ff2d4aa64c3d/uuid-1.30.tar.gz"
    sha256 "1f87cc004ac5120466f36c5beae48b4c48cc411968eed0eaecd3da82aa96193f"
  end

  resource "yaspin" do
    url "https://files.pythonhosted.org/packages/45/92/945d168f13d7e64ae7f013cb9db8a6fbde62a2cb1ce72ba6e0d2af05b402/yaspin-3.0.2.tar.gz"
    sha256 "35cae59c682506794a218310445e8326cd8fec410879d1c44953b494b1121e77"
  end

  resource "randomname" do
    url "https://files.pythonhosted.org/packages/e8/c2/525e9e9b458c3ca493d9bd0871f3ed9b51446d26fe82d462494de188f848/randomname-0.2.1.tar.gz"
    sha256 "b79b98302ba4479164b0a4f87995b7bebbd1d91012aeda483341e3e58ace520e"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/ec/fe/802052aecb21e3797b8f7902564ab6ea0d60ff8ca23952079064155d1ae1/tabulate-0.9.0.tar.gz"
    sha256 "0095b12bf5966de529c0feb1fa08671671b3368eec77d7ef7ab114be2c068b3c"
  end

  resource "alive-progress" do
    url "https://files.pythonhosted.org/packages/6a/cf/de25c4f6123c3b3eb5acc87144d3e017df25b32c16806b14572a259939ac/alive-progress-3.1.5.tar.gz"
    sha256 "42e399a66c8150dc507602dff7b7953f105ef11faf97ddaa6d27b1cbf45c4c98"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/4d/5b/dc575711b6b8f2f866131a40d053e30e962e633b332acf7cd2c24843d83d/setuptools-69.2.0.tar.gz"
    sha256 "0ff4183f8f42cd8fa3acea16c45205521a4ef28f73c6391d8a25e92893134f2e"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
      system bin/"retrodeep", "whoami"
  end
end