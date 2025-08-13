# Homebrew Formula for pypi-package-updater
# This file is automatically updated by GitHub Actions when new releases are published

class PypiPackageUpdater < Formula
  include Language::Python::Virtualenv

  desc "A tool to update Python package dependencies across multiple file formats"
  homepage "https://github.com/adambirds/pypi-package-updater"
  url "https://github.com/adambirds/pypi-package-updater/archive/refs/tags/v0.2.7.tar.gz"
  sha256 "67d80ab26fb932f834496587cbd32ee9e860d66acdee771d5e2a0958902866eb"  # Auto-updated by CI
  license "MIT"
  version "0.2.7"  # Auto-updated by CI

  depends_on "python@3.11"

  def install
    # Install directly from source
    virtualenv_install_with_resources
  end

  test do
    system bin/"pypi-update", "--help"
  end
end
