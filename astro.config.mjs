import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';
import netlify from '@astrojs/netlify';

export default defineConfig({
  output: 'server',
  adapter: netlify(),
  integrations: [tailwind()],
  server: {
    host: '0.0.0.0',
    port: 5000
  }
});
