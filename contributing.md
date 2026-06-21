# Contributing to Corruption Engine

Thank you for your interest in contributing to **Corruption Engine**!  
This document outlines the guidelines and expectations for contributing to the project.

Corruption Engine is currently developed primarily by a single author, but contributions, ideas, and improvements are welcome as the project grows.

---

## 🧭 How to Contribute

### 1. Reporting Issues
If you find a bug, inconsistency, or unexpected behavior:
- Check existing issues to avoid duplicates.
- Open a new issue with:
  - A clear description
  - Steps to reproduce
  - Expected vs. actual behavior
  - Device/environment details (if relevant)

Use the **[issue template](ca://s?q=Give_me_an_issue_template)** if available.

---

### 2. Suggesting Features
Feature ideas are welcome!  
When suggesting a feature:
- Explain the problem or need
- Describe the proposed solution
- Include examples or mockups if helpful
- Keep scope realistic and aligned with the project vision

---

## 🛠 Development Guidelines

### Code Style
- Follow Dart & Flutter best practices.
- Keep engine code **pure Dart** (no Flutter imports).
- Keep UI code inside the `ui/` directory.
- Keep platform-specific code inside `platform/`.

### Folder Structure
Please follow the existing architecture:

lib/ core/ ui/ data/ platform/


If adding new systems, place them in the appropriate engine folder  
(e.g., `core/engine/threats/`, `core/engine/hazards/`).

---

## 🔀 Pull Requests

Before submitting a PR:
1. Ensure your code builds without errors.
2. Test your changes (especially engine logic).
3. Keep PRs focused — one feature or fix per PR.
4. Write clear commit messages.
5. Reference related issues when applicable.

PRs that are too large or unfocused may be requested to split.

---

## 🧪 Testing

Engine systems should be testable using pure Dart.  
If adding new logic:
- Include tests in the `test/` directory when possible.
- Keep tests small and focused.

---

## 🛡 Code of Conduct

All contributors must follow the project’s  
**[Code of Conduct](ca://s?q=Give_me_a_code_of_conduct)**  
to maintain a respectful and safe environment.

---

## 🤝 Getting Help

If you have questions about contributing:
- Open a discussion
- Ask in an issue
- Or contact the maintainer directly

Thanks for helping improve **Corruption Engine**!