class PypiPackageUpdater < Formula
  include Language::Python::Virtualenv

  desc "Update PyPI package versions in your requirements files"
  homepage "https://github.com/adambirds/pypi-package-updater"
  url "https://github.com/adambirds/pypi-package-updater/archive/refs/tags/v0.2.17.tar.gz" # Auto-updated by CI
  sha256 "b2f65e33a163bac26cc7935f4068b062bfe7e40db2ddc47ee62c99a6750a8ea2" # Auto-updated by CI
  version "0.2.17" # Auto-updated by CI
  license "MIT"
  head "https://github.com/adambirds/pypi-package-updater.git", branch: "main"

  depends_on "python@3.11"

  resource "aiohttp" do
    url "https://github.com/adambirds/pypi-package-updater/archive/refs/tags/v0.2.17.tar.gz"
    sha256 "b2f65e33a163bac26cc7935f4068b062bfe7e40db2ddc47ee62c99a6750a8ea2"
  end

  resource "aiosignal" do
    url "https://github.com/adambirds/pypi-package-updater/archive/refs/tags/v0.2.17.tar.gz"
    sha256 "b2f65e33a163bac26cc7935f4068b062bfe7e40db2ddc47ee62c99a6750a8ea2"
  end

  resource "attrs" do
    url "https://github.com/adambirds/pypi-package-updater/archive/refs/tags/v0.2.17.tar.gz"
    sha256 "b2f65e33a163bac26cc7935f4068b062bfe7e40db2ddc47ee62c99a6750a8ea2"
  end

  resource "frozenlist" do
    url "https://github.com/adambirds/pypi-package-updater/archive/refs/tags/v0.2.17.tar.gz"
    sha256 "b2f65e33a163bac26cc7935f4068b062bfe7e40db2ddc47ee62c99a6750a8ea2"
  end

  resource "multidict" do
    url "https://github.com/adambirds/pypi-package-updater/archive/refs/tags/v0.2.17.tar.gz"
    sha256 "b2f65e33a163bac26cc7935f4068b062bfe7e40db2ddc47ee62c99a6750a8ea2"
  end

  resource "packaging" do
    url "https://github.com/adambirds/pypi-package-updater/archive/refs/tags/v0.2.17.tar.gz"
    sha256 "b2f65e33a163bac26cc7935f4068b062bfe7e40db2ddc47ee62c99a6750a8ea2"
  end

  resource "tomli" do
    url "https://github.com/adambirds/pypi-package-updater/archive/refs/tags/v0.2.17.tar.gz"
    sha256 "b2f65e33a163bac26cc7935f4068b062bfe7e40db2ddc47ee62c99a6750a8ea2"
  end

  resource "typing-extensions" do
    url "https://github.com/adambirds/pypi-package-updater/archive/refs/tags/v0.2.17.tar.gz"
    sha256 "b2f65e33a163bac26cc7935f4068b062bfe7e40db2ddc47ee62c99a6750a8ea2"
  end

  resource "yarl" do
    url "https://github.com/adambirds/pypi-package-updater/archive/refs/tags/v0.2.17.tar.gz"
    sha256 "b2f65e33a163bac26cc7935f4068b062bfe7e40db2ddc47ee62c99a6750a8ea2"
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
