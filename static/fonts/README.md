# Font Files Directory

Place your **Iosevka** font files in this directory with the following naming convention:

## Required Files

- `iosevka-regular.woff2` - Regular weight WOFF2 format
- `iosevka-regular.woff` - Regular weight WOFF format (fallback)
- `iosevka-bold.woff2` - Bold weight WOFF2 format
- `iosevka-bold.woff` - Bold weight WOFF format (fallback)
- `iosevka-italic.woff2` - Italic style WOFF2 format
- `iosevka-italic.woff` - Italic style WOFF format (fallback)

## Download Sources

You can download Iosevka fonts from:
- [Official Iosevka Releases](https://github.com/be5invis/Iosevka/releases)
- [Google Fonts (if available)](https://fonts.google.com/)

## Font Configuration

The fonts are already configured in `/assets/scss/_code_fonts.scss` and will be automatically applied to all code elements once the font files are placed in this directory.

## Note

The current SCSS configuration expects these exact filenames. If your font files have different names, update the `@font-face` declarations in `/assets/scss/_code_fonts.scss` accordingly.