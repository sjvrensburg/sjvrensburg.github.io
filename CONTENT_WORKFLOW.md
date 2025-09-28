# Content Creation & Git Workflow Guide

This guide explains how to create content, manage branches, and deploy changes to your Hugo blog.

## Content Creation Workflow

### 1. Creating New Blog Posts

```bash
# Create a new post (Hugo will use the archetype template)
hugo new posts/my-new-post.md

# Or create manually in content/posts/
touch content/posts/my-new-post.md
```

### 2. Post Structure Template

```markdown
+++
title = 'Your Post Title'
date = 2025-09-28T10:00:00+02:00
draft = false
description = 'Brief description for SEO and social sharing'
tags = ['tag1', 'tag2', 'tag3']
categories = ['Technology']  # or ['Demo', 'Personal', etc.]
author = 'Stefan'
+++

# Your Post Title

Your content here...

## Section Headers

Regular markdown content.

### Math Support

Inline math: $E = mc^2$

Display math:
$$\sum_{i=1}^{n} x_i = \bar{x}$$

### Code Examples

```python
def hello_world():
    print("Hello, World!")
```

---

*Found this helpful? Have questions? [Get in touch](/contact/) or connect with me on [GitHub](https://github.com/sjvrensburg).*
```

### 3. Testing Content Locally

```bash
# Start the Hugo development server
hugo server --buildDrafts --buildFuture --disableFastRender

# View your site at http://localhost:1313/
# Changes auto-reload as you edit
```

## Git Workflow for Publishing

### 1. Create a Feature Branch

```bash
# Check current status
git status

# Create and switch to a new branch for your content
git checkout -b content/new-post-name

# Or for multiple posts
git checkout -b content/weekly-updates
```

### 2. Add and Commit Your Changes

```bash
# Add specific files
git add content/posts/my-new-post.md

# Or add all changes
git add .

# Commit with a descriptive message
git commit -m "Add new post: My Post Title

- Cover topic X with examples
- Include mathematical formulas
- Add code examples in Python"

# For multiple commits in the same branch
git add content/posts/another-post.md
git commit -m "Add post about statistical modeling"
```

### 3. Push Branch to GitHub

```bash
# Push the branch to GitHub (first time)
git push -u origin content/new-post-name

# Subsequent pushes
git push
```

### 4. Create a Pull Request

**Option A: Using GitHub CLI (if installed)**
```bash
# Create PR directly from command line
gh pr create --title "Add new blog post: My Post Title" --body "
## Summary
- New blog post covering [topic]
- Includes mathematical formulas and code examples
- Ready for review and publication

## Preview
- Local testing completed
- Math rendering verified
- Typography and formatting checked
"
```

**Option B: Using GitHub Web Interface**
1. Go to https://github.com/sjvrensburg/sjvrensburg.github.io
2. GitHub will show a banner "Compare & pull request" for your new branch
3. Click "Compare & pull request"
4. Fill in the PR template:
   - **Title**: "Add new blog post: [Your Post Title]"
   - **Description**: Brief summary of the content and any special notes

### 5. Merge and Deploy

```bash
# After PR is approved, merge via GitHub interface
# Then update your local main branch

git checkout main
git pull origin main

# Clean up the feature branch
git branch -d content/new-post-name
git push origin --delete content/new-post-name
```

## Content Guidelines

### Writing Tips
- **Audience**: Write for fellow statisticians, data scientists, and developers
- **Tone**: Professional but approachable, technical but clear
- **Structure**: Use clear headings, bullet points, and code examples
- **Math**: Use MathJax syntax for mathematical formulas
- **SEO**: Include relevant tags and a good description

### Tags to Use
- **Technical**: `statistics`, `machine-learning`, `python`, `r`, `data-science`
- **Academic**: `research`, `volatility-forecasting`, `time-series`, `garch`
- **General**: `tutorial`, `analysis`, `visualization`, `methodology`

### Categories
- **Research**: Academic papers, methodology, theoretical work
- **Tutorial**: How-to guides, technical explanations
- **Analysis**: Data analysis projects, case studies
- **Technology**: Tools, software, programming tips
- **Personal**: Career updates, reflections, announcements

## Quick Commands Reference

```bash
# Start development server
hugo server --buildDrafts --buildFuture --disableFastRender

# Create new post
hugo new posts/post-name.md

# Git workflow
git checkout -b content/post-name
git add .
git commit -m "Add post: Title"
git push -u origin content/post-name

# After PR merge
git checkout main
git pull origin main
git branch -d content/post-name
```

## Troubleshooting

### Math Not Rendering
- Check that you're using proper MathJax delimiters: `$...$` or `$$...$$`
- Ensure no extra spaces around delimiters
- Test with simple expressions first

### Build Errors
- Check Hugo syntax in front matter (`+++` blocks)
- Verify file is in correct location (`content/posts/`)
- Look for unescaped characters in content

### Git Issues
- Use `git status` to check current state
- Use `git log --oneline` to see recent commits
- Use `git branch -a` to see all branches

## Deployment

Your blog automatically deploys via GitHub Pages when changes are merged to the `main` branch. The deployment typically takes 2-3 minutes and the site will be available at https://sjvrensburg.github.io/

## Content Ideas

Based on your expertise:
- GARCH model implementations and comparisons
- Volatility forecasting case studies
- R vs Python for statistical analysis
- Time series analysis tutorials
- Academic research summaries
- Data visualization techniques
- Statistical software reviews
- Nelson Mandela University research highlights