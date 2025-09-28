# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Hugo-based static blog for Stefan van Rensburg, deployed to GitHub Pages. The site uses the Terminal theme and focuses on software engineering and technology content.

## Development Commands

### Primary Development
- `npm run dev` or `make dev` - Start development server with drafts and future posts
- `npm run build` or `make build` - Build for production with minification
- `npm run serve` or `make serve` - Start development server with navigation changes
- `npm run clean` or `make clean` - Remove generated files (public/ and resources/)

### Content Creation
- `npm run new:post [title]` or `make new-post TITLE="[title]"` - Create new blog post
- `npm run new:page [title]` or `make new-page TITLE="[title]"` - Create new page
- `hugo new content posts/[filename].md` - Direct Hugo command for posts

### Quality Checks
- `npm run check` or `make check` - Check site for issues and memory usage
- `hugo --gc --minify --printPathWarnings` - Detailed build analysis

## Architecture

### Content Structure
- **Posts**: `content/posts/` - Blog posts with TOML front matter
- **Pages**: `content/` - Static pages (about.md, contact.md)
- **Archetypes**: `archetypes/` - Content templates for new posts/pages

### Theme Configuration
- Uses Terminal theme as git submodule in `themes/terminal/`
- Custom CSS overrides in `assets/css/extended/custom.css`
- Theme settings configured in `hugo.toml` under `[params]`

### Build System
- Hugo v0.131.0+ required
- Minification enabled in production builds
- Assets are processed and optimized automatically
- GitHub Actions handles automated deployment

### Deployment
- Automatic deployment via GitHub Actions on push to main branch
- Workflow file: `.github/workflows/hugo.yml`
- Deploys to GitHub Pages at https://sjvrensburg.github.io/
- Requires git submodules to be initialized: `git submodule update --init --recursive`

## Configuration Files

- **hugo.toml**: Main Hugo configuration, site settings, theme parameters
- **package.json**: npm scripts and project metadata
- **Makefile**: Make commands for development workflow
- **.github/workflows/hugo.yml**: GitHub Actions deployment workflow

## Content Front Matter

Blog posts use TOML front matter:
```toml
+++
title = 'Post Title'
date = 2025-08-23T14:48:57+02:00
draft = false
description = 'SEO description'
tags = ['tag1', 'tag2']
categories = ['Technology']
author = 'Stefan van Rensburg'
+++
```

## Development Notes

- Local development server runs on http://localhost:1313
- Draft posts are shown in development but not in production builds
- The site is optimized for performance, accessibility, and SEO
- All builds include garbage collection (`--gc`) and minification (`--minify`)
- No linting or testing framework is currently configured