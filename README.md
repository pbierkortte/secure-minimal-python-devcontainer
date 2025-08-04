# Secure Minimal Python Dev Container

Development containers provide isolated, consistent environments that eliminate the "works on my machine" problem. This setup gives you a ready-to-use Python development environment with security best practices built in.

Instead of spending hours configuring Python versions, extensions, and dependencies, you get a working setup in minutes. Perfect for teams who want consistent development environments across different machines and operating systems.

## Quick Start

1. Clone or download this template
2. Open the folder in VS Code
3. Install "Dev Containers" extension if not already installed
4. Customize `requirements.txt` and `devcontainer.json` for your project needs
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

- Python 3.11 environment
- Complete Python toolchain (Pylance, debugger, Black formatter)
- Testing framework (pytest with coverage)
- Security settings to prevent credential leaks
- AI coding optimized (reduces token waste, prevents common traps)

## Files

- `devcontainer.json` - Container configuration
- `requirements.txt` - Testing and formatting dependencies (pytest, pytest-cov, black)

## Key Settings

- **Security**: Prevents Docker/Git credentials from leaking into container
- **Extensions**: Auto-installs Python tools
- **Auto-install**: Dependencies install on container creation
- **AI Ready**: Avoids common traps and saves tokens

## Customization

- Edit `requirements.txt` for your project dependencies
- Adjust `devcontainer.json` to add features
