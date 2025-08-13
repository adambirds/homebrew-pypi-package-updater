# Homebrew Tap for pypi-package-updater

This is the official Homebrew tap for [pypi-package-updater](https://github.com/adambirds/pypi-package-updater), a tool to update Python package dependencies across multiple file formats.

## Installation

### Option 1: Tap and Install (Recommended)
```bash
brew tap adambirds/pypi-package-updater
brew install pypi-package-updater
```

### Option 2: Direct Install
```bash
brew install adambirds/pypi-package-updater/pypi-package-updater
```

## Usage

After installation, you can use the tool anywhere:

```bash
pypi-update --help
```

For detailed usage instructions, see the [main repository](https://github.com/adambirds/pypi-package-updater).

## Updates

This tap is automatically updated when new releases are published to the main repository. The formula is maintained via GitHub Actions to ensure the latest version and correct checksums.

## Issues

If you encounter any issues with the Homebrew installation:

1. First try updating the tap: `brew update`
2. Check for formula issues: `brew doctor`
3. For package-specific issues, please report them in the [main repository](https://github.com/adambirds/pypi-package-updater/issues)

## Formula Details

- **Formula Name**: `pypi-package-updater`
- **Dependencies**: Python 3.11+
- **License**: MIT
- **Supported Platforms**: macOS, Linux

## Contributing

This tap is automatically maintained. Manual formula updates are not necessary as they are handled by CI/CD workflows.
