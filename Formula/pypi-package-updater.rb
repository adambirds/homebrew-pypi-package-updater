class PypiPackageUpdater < Formula
  include Language::Python::Virtualenv

  desc "Update PyPI package versions in your requirements files"
  homepage "https://github.com/adambirds/pypi-package-updater"
  url "https://github.com/adambirds/pypi-package-updater/archive/refs/tags/v0.2.19.tar.gz" # Auto-updated by CI
  sha256 "fdacddc103a27c7fa161c516d0c7e00b81ca6aae5d8a69e981998cee7c9652dc" # Auto-updated by CI
  version "0.2.19" # Auto-updated by CI
  license "MIT"
  head "https://github.com/adambirds/pypi-package-updater.git", branch: "main"

  depends_on "python@3.11"

  resource "aiohttp" do
    url "https://files.pythonhosted.org/packages/54/07/9467d23915c19c9c10ca474a168af5227764fc9b074900042d83a3296386/aiohttp-3.12.15.tar.gz"
    sha256 "77e6fd3cb8f9f72ccd8c79dcfb6ac3fcf2fb0a875bfaa1a6f82b85ad53f9b86a"
  end

  resource "aiosignal" do
    url "https://files.pythonhosted.org/packages/ae/67/0952ed97a9793b4958e5736f6d2b346b414a2cd63e82d05e4ea29c115cd/aiosignal-1.3.1.tar.gz"
    sha256 "54cd96e15e1649b75d6c87526a6ff0b6c1b0dd3459f43d9ca11d48c339b68cfc"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/fc/0f/aafca9af9315aee06a89ffde799a10a582fe8de76c563ee80bbcdc08b3fb/attrs-24.2.0.tar.gz"
    sha256 "5cfb1b9148b5b086569baec03f20d7b6bf3bcacc9a42bebf87ffaaca362f6346"
  end

  resource "frozenlist" do
    url "https://files.pythonhosted.org/packages/8f/ed/0f4cec13a93c02c47ec32d81d11c0c1efbadf4a471e3f3ce7cad366cbbd3/frozenlist-1.5.0.tar.gz"
    sha256 "81d5af29e61b9c8348e876d442253723928dce6433e0e76cd925cd83f1b4b817"
  end

  resource "multidict" do
    url "https://files.pythonhosted.org/packages/d6/be/504b89a5e9ca731cd47487e91c469064f8ae5af93b7259758dcfc2b9c848/multidict-6.1.0.tar.gz"
    sha256 "22ae2ebf9b0c69d206c003e2f6a914ea33f0a932d4aa16f236afc049d9958f4a"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/d0/63/68dbb6eb2de9cb10ee4c9c14a0148804425e13c4fb20d61cce69f53106da/packaging-25.0.tar.gz"
    sha256 "35ca6a2328e5190e75ec42e1b5e60ab7a6c9e05c6e9c6e7e3c7d5d1f3ab6b9e9"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/26/9f/ad63fc0248c5379346306f8668cda6e2e2e9c95e01216d2b8ffd9ff037570/typing_extensions-4.14.1.tar.gz"
    sha256 "4a2b9ded3f6fbd6534d8a9b5e74f45bdd5df4cc9c1b3e1fff9000f6088a63b3e"
  end

  resource "yarl" do
    url "https://files.pythonhosted.org/packages/b7/9d/4b94a8e6d2b51b599516a5cb88e5bc99b4d8d4583e468057eaa29d5f0918/yarl-1.18.3.tar.gz"
    sha256 "ac1801c45cbf77b6c99242eeff4fffb5e4e73a800b5c4ad4fc0be5def634d2e9"
  end

  def install
    virtualenv_install_with_resources

    # Create a symlink for the main script
    bin.install_symlink libexec/"bin/pypi-update"
  end

  test do
    # Test the installation by checking version
    system bin/"pypi-update", "--version"
    
    # Test basic functionality with help
    system bin/"pypi-update", "--help"
  end
end
