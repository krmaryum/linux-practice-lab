# GitHub Notes 🚀

## What is GitHub?

GitHub is a cloud platform used to store, manage, and collaborate on code using Git.

---

# Git Basics

## Check Current Folder

```bash
pwd
```

## Initialize Git Repository

```bash
git init
```

## Check Status

```bash
git status
```

---

# Add Files

## Add Single File

```bash
git add README.md
```

## Add All Files

```bash
git add .
```

---

# Commit Changes

```bash
git commit -m "Initial commit"
```

---

# Connect Local Repository to GitHub

```bash
git remote add origin https://github.com/USERNAME/REPOSITORY.git
```

Check remote:

```bash
git remote -v
```

---

# Branch Commands

## Rename Branch to main

```bash
git branch -M main
```

## Create New Branch

```bash
git checkout -b feature-branch
```

---

# Push Code to GitHub

```bash
git push -u origin main
```

---

# Pull Latest Changes

```bash
git pull origin main
```

---

# Clone Repository

```bash
git clone https://github.com/USERNAME/REPOSITORY.git
```

---

# GitHub Workflow

1. Create repository on GitHub
2. Initialize Git locally
3. Add files
4. Commit changes
5. Connect remote repository
6. Push code to GitHub

---

# Useful Git Commands

## View Commit History

```bash
git log
```

## Short Log

```bash
git log --oneline
```

## Remove File from Git

```bash
git rm filename
```

## Rename File

```bash
git mv oldname newname
```

---

# .gitignore Example

```gitignore
node_modules/
*.log
.env
__pycache__/
```

---

# SSH Setup

## Generate SSH Key

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

## Start SSH Agent

```bash
eval "$(ssh-agent -s)"
```

## Add SSH Key

```bash
ssh-add ~/.ssh/id_ed25519
```

---

# GitHub Best Practices

- Write meaningful commit messages
- Push code regularly
- Use branches for features
- Add README.md
- Use .gitignore
- Keep repositories organized

---

# Repository Structure Example

```text
project/
│
├── README.md
├── .gitignore
├── src/
├── scripts/
└── docs/
```

---

# Happy Coding 💻

