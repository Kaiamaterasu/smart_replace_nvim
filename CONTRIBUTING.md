# Contributing to Smart Replace Neovim Plugin

We welcome contributions to the Smart Replace Neovim Plugin! This document provides guidelines for contributing to the project.

## 🤝 How to Contribute

1. **Fork the Repository**
   - Click the "Fork" button at the top right of the repository page

2. **Clone Your Fork**
   ```bash
   git clone https://github.com/your-username/smart_replace_nvim.git
   cd smart_replace_nvim
   ```

3. **Create a Branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

4. **Make Changes**
   - Ensure your code follows Lua best practices
   - Add/update tests if applicable
   - Run linting and formatting checks

5. **Commit Changes**
   ```bash
   git add .
   git commit -m "Description of your changes"
   ```

6. **Push to Your Fork**
   ```bash
   git push origin feature/your-feature-name
   ```

7. **Open a Pull Request**
   - Provide a clear description of your changes
   - Reference any related issues

## 🧪 Development Setup

### Requirements
- Neovim (latest stable version)
- Lua 5.1+
- luacheck (for linting)

### Linting
```bash
luarocks install luacheck
luacheck lua/smart-replace
```

## 📋 Code Guidelines

- Follow existing code style
- Write clear, concise comments
- Add tests for new functionality
- Ensure backward compatibility

## 🐛 Reporting Issues

- Use GitHub Issues
- Provide detailed information
- Include Neovim version
- Attach reproduction steps

## 📄 License

By contributing, you agree that your contributions will be licensed under the MIT License.

## 🙏 Code of Conduct

Be respectful, inclusive, and constructive in all interactions.

Thank you for contributing! 🌟
