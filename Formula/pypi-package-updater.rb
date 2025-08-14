class PypiPackageUpdater < Formula
  include Language::Python::Virtualenv

  desc "Update PyPI package versions in your requirements files"
  homepage "https://github.com/adambirds/pypi-package-updater"
  url "https://github.com/adambirds/pypi-package-updater/archive/v0.2.16.tar.gz" # Auto-updated by CI
  sha256 "REPLACE_WITH_ACTUAL_SHA256" # Auto-updated by CI
  version "0.2.16" # Auto-updated by CI
  license "MIT"
  head "https://github.com/adambirds/pypi-package-updater.git", branch: "main"

  depends_on "python@3.11"

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/source/a/aiohttp/aiohttp-3.12.15.tar.gz"
    sha256 "e7d28b01fea48c1be3a7d7eb9f1bf2a30fa89f0f75e4c87b7fe8c5e2a6e83ff8"
  end

  resource "aiosignal" do
    url "https://files.pythonhosted.org/packages/source/a/aiosignal/aiosignal-1.3.2.tar.gz"
    sha256 "78ed67db6c7b7ced4f98e495e572106d5c432a93e1ddd1bf475e1dc05f5b7df2"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/source/a/attrs/attrs-24.5.0.tar.gz"
    sha256 "6e3e4da4ec4b05b1e3e1b8c2a9b35f57ddaa8095ce73c4b5b2a8cc1b8d5dbc5c"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/source/f/frozenlist/frozenlist-1.5.0.tar.gz"
    sha256 "81d5af29e61b9c8348e876d442253723928dce6433e0e76cd925cd83f1b4b817"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/source/m/multidict/multidict-6.1.0.tar.gz"
    sha256 "22ae2ebf9b0c69d206c003e2f6a914ea33f0a932d4aa16f236afc049d9958f4a"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/source/p/packaging/packaging-25.0.tar.gz"
    sha256 "35a60fe83b4890ba85b72ccdc3db12a4eb32a9b7bbb07d1bb66e21b1c8fa8bb1"
  end

  resource "tomli" do
    url "https://files.pythonhosted.org/packages/source/t/tomli/tomli-2.2.1.tar.gz"
    sha256 "cd45e1dc79c835ce60f7404ec8119f2eb06d38b1deba146f07ced3bbc44505ff"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/source/t/typing_extensions/typing_extensions-4.14.1.tar.gz"
    sha256 "d771ce3e3ccf14b9e14cceaaf3ac01f58eab7c26e64e0c1f8c8b9c3d17da3ee9"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/source/y/yarl/yarl-1.19.0.tar.gz"
    sha256 "b06a4311fdaf7e7e7bd6b7ebe0d8afb9dc9e95ce0bb9b13d4ba48a28aaeb8743"
  end

  def install
    virtualenv_install_with_resources

    # Create a symlink for the main script
    bin.install_symlink libexec/"bin/update-packages"
  end

  test do
    # Test the installation by checking version
    system bin/"update-packages", "--version"
    
    # Test basic functionality with help
    system bin/"update-packages", "--help"
  end
end
