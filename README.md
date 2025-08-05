# Secure Minimal Python Dev Container

Development containers provide isolated, consistent environments that eliminate the "works on my machine" problem. This setup gives you a ready-to-use Python development environment with security best practices and essential tools pre-installed.

Instead of spending hours configuring Python versions, extensions, and dependencies, you get a working setup in minutes. Perfect for teams who want consistent development environments across different machines and platforms.

## Quick Start

1. Clone or download this template
2. Open the folder in VS Code
3. Install the "Dev Containers" extension if not already installed
4. Customize `requirements.txt` and `.devcontainer/devcontainer.json` for your project needs
5. Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac) → "Dev Containers: Reopen in Container"
6. Wait for the container to build and dependencies to install

**Happy coding!**

## Verification

Once your container is running, verify everything works:

```bash
pytest
```

You should see the test pass, confirming your development environment is ready.

## What You Get

- Python 3.11 environment (via official devcontainers image)
- Complete Python toolchain:
  - Python extension (ms-python.python)
  - Pylance language server (ms-python.pylance)
  - Debugpy debugger (ms-python.debugpy)
  - Black code formatter (ms-python.black-formatter)
- Testing framework (`pytest` with coverage)
- AWS CLI (pre-installed via devcontainer features)
- Security settings to prevent credential leaks
- AI coding ready (minimal token waste, avoids common traps)
- Quiet pip output by default to reduce noise (can be disabled)

## Pre-installed Tools

- **AWS CLI**: Cloud development ready—AWS CLI is pre-installed for easy integration.
- **Quiet pip output**: By default, pip output is minimized to reduce noise. Unset `PIP_QUIET` to see full pip logs.

## VS Code Extensions

The container auto-installs:
- `ms-python.python` – Python support
- `ms-python.pylance` – Language server
- `ms-python.debugpy` – Debugging
- `ms-python.black-formatter` – Code formatting

> Note: AI coding assistant extensions (Cline, Kilo, Roo) are available but not enabled by default. Uncomment them in `.devcontainer/devcontainer.json` if desired.

## Files

- `.devcontainer/devcontainer.json` – Container configuration
- `.devcontainer/Dockerfile` – Base image (Python 3.11)
- `requirements.txt` – Testing and formatting dependencies (pytest, pytest-cov, black)
- `example.py` – Example Python script

## Key Settings

- **Security**:
  - Prevents Docker/Git credentials from leaking into the container
  - Disables Git credential helper and WSL credential copying
- **Extensions**:
  - Auto-installs core Python and formatting tools
- **Auto-install**:
  - Python dependencies install automatically on container creation
- **AI Ready**:
  - Avoids common traps, saves tokens by suppressing verbose logs

## Platform Note

- The container is built for `linux/amd64` by default (set in `.devcontainer/devcontainer.json`). If you are on Apple Silicon (ARM), this ensures compatibility.

## Customization

- Edit `requirements.txt` for your project dependencies
- Adjust `.devcontainer/devcontainer.json` to add features, tools, or extensions

## License

[GNU General Public License v3.0](LICENSE)
