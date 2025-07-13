#!/bin/bash

# === Ritual Git Init Script ===
echo "🐍 Initializing Git for Ritual Mesh..."

# Initialize Git if not already
git rev-parse --is-inside-work-tree 2>/dev/null || git init

# Create .gitignore
cat > .gitignore <<'EOF'
# === Ruby Artifacts ===
*.gem
*.rbc
.bundle/
vendor/bundle/
log/
tmp/
*.log

# === Environment Files ===
.env
.env.*
.byebug_history
.ruby-version
.ruby-gemset

# === macOS Clutter ===
.DS_Store
.AppleDouble
.LSOverride
Icon?
._*
.Spotlight-V100
.Trashes
.fseventsd
.VolumeIcon.icns

# === Editor/IDE Files ===
*.swp
*.swo
*.sublime*
.idea/
.vscode/

# === Xcode Ritual Override ===
/Applications/XcodeBetaNoSpace.app
/Users/victorj/Downloads/Xcode-beta 3.app

# === Ritual Mesh Protected Files ===
ritualmesh.pid
ritual.env
ritual_tokens.json
.zshrc.secret
EOF

# Create .git/info/exclude
mkdir -p .git/info
cat > .git/info/exclude <<'EOF'
# === Local Ritual Mesh Overrides (Not committed) ===
ritual_tokens.json
ritual.env
.zshrc.secret
XcodeBetaNoSpace.app
Xcode-beta 3.app
*.log
.cache/
build/
dist/
tmp/
*.retry
*.pid
ritualnode.*
oracle_keychain.json
.DS_Store
.Trashes
EOF

# Add and commit
git add .gitignore
git commit -m "🔐 Init: Add Ritual Mesh .gitignore and local exclude"

# Ritual Banner
echo "✅ Git Ritual Init Complete"
echo "🧿 Your local artifacts are now protected. Commit with confidence."

