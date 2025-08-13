# Homebrew Formula for pypi-package-updater
# This file is automatically updated by GitHub Actions when new releases are published

class PypiPackageUpdater < Formula
  include Language::Python::Virtualenv

  desc "A tool to update Python package dependencies across multiple file formats"
  homepage "https://github.com/adambirds/pypi-package-updater"
  url "https://github.com/adambirds/pypi-package-updater/archive/refs/tags/v0.2.9.tar.gz"
  sha256 "d723ad40995279f8e6b0caf1977278cb52cb97fe518b5817a13b01334a1c8d4f"  # Auto-updated by CI
  license "MIT"
  version "0.2.9"  # Auto-updated by CI

  depends_on "python@3.11"

  def install
    # Install directly from source
    virtualenv_install_with_resources
  end

  test do
    system bin/"pypi-update", "--help"
  end
end
