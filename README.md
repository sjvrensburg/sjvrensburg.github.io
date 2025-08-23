# Stefan van Rensburg's Blog

A modern, minimalist blog built with [Hugo](https://gohugo.io/) and hosted on [GitHub Pages](https://pages.github.com/). This blog focuses on software engineering, web development, and technology insights.

🌐 **Live Site**: [https://sjvrensburg.github.io/](https://sjvrensburg.github.io/)

## ✨ Features

- **Modern Hugo Setup**: Built with Hugo static site generator for blazing-fast performance
- **Responsive Design**: Mobile-first approach with the Terminal theme
- **SEO Optimized**: Proper meta tags, structured data, and sitemap
- **Accessibility First**: WCAG compliant with semantic HTML, proper ARIA labels, and keyboard navigation
- **Performance Focused**: Minified assets, optimized images, and fast loading times
- **GitHub Actions CI/CD**: Automated deployment to GitHub Pages
- **Developer Friendly**: Hot reload, scripts for common tasks, and proper tooling

## 🚀 Quick Start

### Prerequisites

- [Hugo](https://gohugo.io/installation/) v0.131.0 or higher
- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/) (for build scripts)

### Local Development

1. **Clone the repository**:
   ```bash
   git clone https://github.com/sjvrensburg/sjvrensburg.github.io.git
   cd sjvrensburg.github.io
   ```

2. **Initialize submodules** (for the theme):
   ```bash
   git submodule update --init --recursive
   ```

3. **Start the development server**:
   ```bash
   # Using npm scripts
   npm run dev
   
   # Or using Make
   make dev
   
   # Or directly with Hugo
   hugo server --buildDrafts --buildFuture --disableFastRender
   ```

4. **Open your browser** and navigate to `http://localhost:1313`

## 📝 Content Management

### Creating New Posts

```bash
# Using npm scripts
npm run new:post your-post-title

# Using Make
make new-post TITLE="your-post-title"

# Using Hugo directly
hugo new content posts/your-post-title.md
```

### Creating New Pages

```bash
# Using npm scripts  
npm run new:page your-page-title

# Using Make
make new-page TITLE="your-page-title"

# Using Hugo directly
hugo new content your-page-title.md
```

### Content Structure

```
content/
├── about.md           # About page
├── contact.md         # Contact page
└── posts/            # Blog posts
    └── *.md          # Individual posts
```

### Front Matter

Each post uses TOML front matter with the following structure:

```toml
+++
title = 'Your Post Title'
date = 2025-08-23T14:48:57+02:00
draft = false
description = 'A brief description for SEO'
tags = ['tag1', 'tag2']
categories = ['Technology']
author = 'Stefan van Rensburg'
+++

Your content here...
```

## 🛠️ Available Commands

### Using npm scripts:

```bash
npm run dev              # Start development server with drafts
npm run build            # Build for production
npm run build:preview    # Build including drafts and future posts
npm run serve            # Start development server
npm run clean            # Remove generated files
npm run check            # Check site for issues
```

### Using Make:

```bash
make dev                 # Start development server with drafts
make build               # Build for production
make serve-prod          # Start production server
make clean               # Remove generated files
make check               # Check site for issues
make help               # Show all available commands
```

## 🏗️ Project Structure

```
sjvrensburg.github.io/
├── .github/
│   └── workflows/
│       └── hugo.yml           # GitHub Actions workflow
├── archetypes/
│   ├── default.md            # Default content template
│   └── posts.md              # Blog post template
├── assets/
│   └── css/
│       └── extended/
│           └── custom.css    # Custom CSS overrides
├── content/                  # All content files
├── layouts/
│   └── 404.html             # Custom 404 page
├── static/
│   ├── robots.txt           # SEO robots file
│   └── .well-known/
│       └── security.txt     # Security contact info
├── themes/
│   └── terminal/            # Hugo theme (git submodule)
├── hugo.toml               # Hugo configuration
├── package.json            # npm scripts and metadata
├── Makefile               # Make commands
└── README.md              # This file
```

## 🎨 Theme

This site uses the [Terminal theme](https://github.com/panr/hugo-theme-terminal) by Radek Kozieł. The theme is:

- **Minimalist**: Clean, distraction-free reading experience
- **Fast**: Lightweight with optimized assets
- **Accessible**: Built with semantic HTML and ARIA support
- **Responsive**: Mobile-first design that works on all devices

### Theme Customization

Custom styles are added in `assets/css/extended/custom.css` and include:

- Enhanced focus management for keyboard navigation
- Improved color contrast for accessibility
- Better code block and table styling
- Print-friendly styles
- Support for reduced motion preferences

## 🚀 Deployment

This blog is automatically deployed to GitHub Pages using GitHub Actions. The deployment workflow:

1. **Triggers** on push to the `main` branch
2. **Builds** the site using Hugo
3. **Deploys** to GitHub Pages
4. **Optimizes** assets with minification and compression

### Manual Deployment

To deploy manually:

```bash
# Build the site
npm run build

# Push to GitHub (triggers automatic deployment)
git add .
git commit -m "Update content"
git push origin main
```

## ⚡ Performance

This blog is optimized for performance with:

- **Static Generation**: Pre-built HTML for instant loading
- **Minified Assets**: CSS and JavaScript are minified
- **Optimized Images**: Responsive images with proper sizing
- **Caching**: Proper cache headers for static assets
- **CDN**: Served via GitHub Pages CDN

### Lighthouse Scores

The site targets:
- **Performance**: 90+ 
- **Accessibility**: 100
- **Best Practices**: 100
- **SEO**: 100

## 🌐 SEO Features

- **Structured Data**: JSON-LD markup for rich snippets
- **Open Graph**: Social media sharing optimization
- **Twitter Cards**: Enhanced Twitter sharing
- **Sitemap**: Auto-generated XML sitemap
- **Robots.txt**: Search engine crawling instructions
- **Meta Tags**: Proper title, description, and keywords

## 🔧 Configuration

### Site Configuration

Edit `hugo.toml` to customize:

- Site title and description
- Author information
- Menu items
- Theme settings
- SEO parameters

### Environment Variables

No environment variables are required for basic operation. For advanced features:

- `HUGO_ENVIRONMENT`: Set to `production` for production builds
- `GOOGLE_ANALYTICS_ID`: Add to `hugo.toml` for analytics

## 🧪 Testing

### Local Testing

```bash
# Build and check for issues
npm run check

# Test production build locally
npm run serve:production
```

### Accessibility Testing

The site includes accessibility features and should be tested with:

- **Screen readers** (NVDA, JAWS, VoiceOver)
- **Keyboard navigation** (Tab, Enter, Space, Arrow keys)
- **High contrast mode** and **reduced motion** preferences
- **Tools**: axe, WAVE, Lighthouse accessibility audit

## 🤝 Contributing

This is a personal blog, but suggestions are welcome!

1. **Issues**: Report bugs or suggest features via GitHub Issues
2. **Pull Requests**: Submit improvements with clear descriptions
3. **Content**: Typos and content improvements are appreciated

### Development Guidelines

- Follow existing code style and conventions
- Test accessibility features thoroughly
- Ensure responsive design works on all devices
- Maintain performance scores above 90

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 📬 Contact

- **Email**: [stefan@example.com](mailto:stefan@example.com)
- **GitHub**: [@sjvrensburg](https://github.com/sjvrensburg)
- **LinkedIn**: [Stefan van Rensburg](https://linkedin.com/in/sjvrensburg)
- **Website**: [https://sjvrensburg.github.io/](https://sjvrensburg.github.io/)

---

Built with ❤️ using [Hugo](https://gohugo.io/) and hosted on [GitHub Pages](https://pages.github.com/).