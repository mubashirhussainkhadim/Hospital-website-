# Netlify Deployment Guide

This guide provides step-by-step instructions for deploying your Astro site to Netlify.

## 🚀 Quick Deploy

### Option 1: Git-based Deployment (Recommended)

1. **Push to Git Repository**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin <your-repo-url>
   git push -u origin main
   ```

2. **Connect to Netlify**
   - Go to [netlify.com](https://netlify.com)
   - Click "New site from Git"
   - Choose your Git provider (GitHub, GitLab, Bitbucket)
   - Select your repository
   - Netlify will auto-detect settings from `netlify.toml`

3. **Deploy**
   - Click "Deploy site"
   - Your site will be live in minutes!

### Option 2: Manual Deploy

1. **Build the project**
   ```bash
   npm run build
   ```

2. **Deploy the dist folder**
   - Go to [netlify.com](https://netlify.com)
   - Drag and drop the `dist` folder to Netlify

## ⚙️ Configuration Details

### Current Setup

- **Build Command**: `npm run build`
- **Publish Directory**: `dist`
- **Node Version**: 18
- **Adapter**: Netlify SSR with Edge Functions
- **Framework**: Astro with Tailwind CSS

### netlify.toml Configuration

```toml
[build]
  publish = "dist"
  command = "npm run build"

[build.environment]
  NODE_VERSION = "18"

[[redirects]]
  from = "/*"
  to = "/.netlify/functions/entry"
  status = 200

[functions]
  node_bundler = "esbuild"

[[headers]]
  for = "/*"
  [headers.values]
    X-Frame-Options = "DENY"
    X-XSS-Protection = "1; mode=block"
    X-Content-Type-Options = "nosniff"
    Referrer-Policy = "strict-origin-when-cross-origin"
```

## 🔧 Environment Variables

If you need environment variables:

1. In Netlify Dashboard:
   - Go to Site settings → Environment variables
   - Add your variables

2. In your code:
   ```javascript
   const apiKey = import.meta.env.PUBLIC_API_KEY;
   ```

## 🌐 Custom Domain

1. **Add Custom Domain**
   - Go to Site settings → Domain management
   - Click "Add custom domain"
   - Follow DNS configuration instructions

2. **SSL Certificate**
   - Automatically provided by Netlify
   - Force HTTPS in Site settings → HTTPS

## 📊 Performance Optimization

### Already Configured:
- ✅ Server-side rendering (SSR)
- ✅ Edge functions for fast response
- ✅ Security headers
- ✅ Automatic compression
- ✅ CDN distribution

### Additional Optimizations:
- Enable Netlify Analytics (optional)
- Set up form handling with Netlify Forms
- Configure branch deploys for staging

## 🔍 Troubleshooting

### Common Issues:

1. **Build Fails**
   - Check Node version (should be 18+)
   - Verify all dependencies are in package.json
   - Check build logs in Netlify dashboard

2. **Functions Not Working**
   - Ensure `output: 'server'` in astro.config.mjs
   - Check function logs in Netlify dashboard

3. **404 Errors**
   - Verify redirects in netlify.toml
   - Check if all routes are properly configured

### Build Commands:

```bash
# Local development
npm run dev

# Production build
npm run build

# Preview production build
npm run preview

# Type checking
npm run astro check
```

## 📱 Branch Deploys

Set up branch deploys for testing:

1. Go to Site settings → Build & deploy
2. Configure branch deploys
3. Each branch gets its own preview URL

## 🚀 Deployment Checklist

- [ ] Code pushed to Git repository
- [ ] Environment variables configured
- [ ] Custom domain set up (if needed)
- [ ] SSL certificate active
- [ ] Forms configured (if using)
- [ ] Analytics set up (optional)
- [ ] Performance monitoring enabled

## 📞 Support

- [Netlify Documentation](https://docs.netlify.com/)
- [Astro Netlify Guide](https://docs.astro.build/en/guides/deploy/netlify/)
- [Community Support](https://community.netlify.com/)

---

**Your site is ready for Netlify deployment!** 🎉

Simply push to your Git repository and connect it to Netlify for automatic deployments.