# Astro Site - Netlify Deployment

This is an Astro project configured for deployment on Netlify with Tailwind CSS integration.

## 🚀 Project Structure

```
/
├── public/
├── src/
│   ├── components/
│   ├── data/
│   ├── pages/
│   └── styles/
├── astro.config.mjs
├── netlify.toml
└── package.json
```

## 🧞 Commands

All commands are run from the root of the project, from a terminal:

| Command                   | Action                                           |
| :------------------------ | :----------------------------------------------- |
| `npm install`             | Installs dependencies                            |
| `npm run dev`             | Starts local dev server at `localhost:4321`     |
| `npm run build`           | Build your production site to `./dist/`          |
| `npm run preview`         | Preview your build locally, before deploying     |
| `npm run astro ...`       | Run CLI commands like `astro add`, `astro check` |
| `npm run astro -- --help` | Get help using the Astro CLI                     |

## 📦 Netlify Deployment

This project is configured for Netlify deployment with:

- **Netlify Adapter**: `@astrojs/netlify` for server-side rendering
- **Build Command**: `npm run build`
- **Publish Directory**: `dist`
- **Node Version**: 18

### Deploy to Netlify

1. Push your code to a Git repository (GitHub, GitLab, or Bitbucket)
2. Connect your repository to Netlify
3. Netlify will automatically detect the build settings from `netlify.toml`
4. Deploy!

### Manual Deploy

You can also deploy manually:

```bash
npm run build
# Upload the dist/ folder to Netlify
```

## 🔧 Configuration

- **Astro Config**: `astro.config.mjs` - Configured with Netlify adapter and Tailwind
- **Netlify Config**: `netlify.toml` - Build settings and redirects
- **Tailwind Config**: `tailwind.config.mjs` - Tailwind CSS configuration

## 📚 Learn More

- [Astro Documentation](https://docs.astro.build)
- [Netlify Documentation](https://docs.netlify.com)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)