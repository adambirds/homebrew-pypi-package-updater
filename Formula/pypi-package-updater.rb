# Homebrew Formula for pypi-package-updater
# This file is automatically updated by GitHub Actions when new releases are published

class PypiPackageUpdater < Formula
  include Language::Python::Virtualenv

  desc "A tool to update Python package dependencies across multiple file formats"
  homepage "https://github.com/adambirds/pypi-package-updater"
  url "https://github.com/adambirds/pypi-package-updater/archive/refs/tags/v0.2.13.tar.gz"
  sha256 "2841a1512053d7dfa36fabb5aecbe3375584e5230de1dfd350f15a1af0287965"  # Auto-updated by CI
  license "MIT"
  version "0.2.13"  # Auto-updated by CI

  depends_on "python@3.11"

  def install
    # Install directly from source
    virtualenv_install_with_resources
  end

  test do
    system bin/"pypi-update", "--help"
  end
end
