#!/bin/bash

# Netlify Deployment Script for Astro Site
# This script helps automate the deployment process

echo "🚀 Starting Netlify Deployment Process..."
echo "==========================================="

# Check if we're in the right directory
if [ ! -f "astro.config.mjs" ]; then
    echo "❌ Error: astro.config.mjs not found. Please run this script from the project root."
    exit 1
fi

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Error: Node.js is not installed. Please install Node.js first."
    exit 1
fi

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "❌ Error: npm is not installed. Please install npm first."
    exit 1
fi

echo "✅ Environment checks passed"

# Install dependencies
echo "📦 Installing dependencies..."
npm install

if [ $? -ne 0 ]; then
    echo "❌ Error: Failed to install dependencies"
    exit 1
fi

echo "✅ Dependencies installed successfully"

# Run type checking
echo "🔍 Running type checks..."
npm run astro check

if [ $? -ne 0 ]; then
    echo "⚠️  Warning: Type check failed, but continuing with build..."
fi

# Build the project
echo "🏗️  Building project for production..."
npm run build

if [ $? -ne 0 ]; then
    echo "❌ Error: Build failed"
    exit 1
fi

echo "✅ Build completed successfully"

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📝 Initializing Git repository..."
    git init
    echo "✅ Git repository initialized"
fi

# Add all files to git
echo "📝 Adding files to Git..."
git add .

# Commit changes
echo "💾 Committing changes..."
read -p "Enter commit message (or press Enter for default): " commit_message
if [ -z "$commit_message" ]; then
    commit_message="Deploy to Netlify - $(date '+%Y-%m-%d %H:%M:%S')"
fi

git commit -m "$commit_message"

echo "✅ Changes committed"

# Check if remote origin exists
if ! git remote get-url origin &> /dev/null; then
    echo "🔗 No remote repository found."
    echo "Please add your remote repository:"
    echo "git remote add origin <your-repo-url>"
    echo "Then push with: git push -u origin main"
else
    echo "🚀 Pushing to remote repository..."
    git push
    
    if [ $? -eq 0 ]; then
        echo "✅ Successfully pushed to remote repository"
        echo "🎉 Your site should now be deploying on Netlify!"
    else
        echo "❌ Failed to push to remote repository"
        echo "Please check your Git configuration and try again"
    fi
fi

echo "==========================================="
echo "🎯 Deployment Summary:"
echo "   ✅ Dependencies installed"
echo "   ✅ Project built successfully"
echo "   ✅ Changes committed to Git"
echo "   📁 Build output: ./dist/"
echo ""
echo "📋 Next Steps:"
echo "   1. If not done already, connect your Git repo to Netlify"
echo "   2. Netlify will automatically deploy from your main branch"
echo "   3. Check your Netlify dashboard for deployment status"
echo ""
echo "📖 For detailed instructions, see: NETLIFY_DEPLOYMENT.md"
echo "🎉 Happy deploying!"