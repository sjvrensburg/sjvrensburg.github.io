+++
title = 'Typography & Font Showcase'
date = 2025-09-28T09:00:00+02:00
draft = false
description = 'A showcase of the new Nunito Sans and Iosevka fonts with code examples'
tags = ['typography', 'fonts', 'design']
categories = ['Demo']
author = 'Stefan'
+++

# Typography & Font Showcase

This post demonstrates the new **Nunito Sans** typography for body text and headings, plus the **Iosevka** monospace font for code elements.

## Nunito Sans Typography

This body text is displayed in **Nunito Sans**, a clean and modern sans-serif font that provides excellent readability. The font supports multiple weights and styles:

- **Regular weight** for body text
- **Bold weight** for emphasis
- *Italic style* for subtle emphasis
- ***Bold italic*** for strong emphasis

### Headings Hierarchy

All headings from H1 to H6 use Nunito Sans with increased font weights:

# Heading 1 - Main Title
## Heading 2 - Section Title
### Heading 3 - Subsection
#### Heading 4 - Sub-subsection
##### Heading 5 - Minor heading
###### Heading 6 - Smallest heading

---

## Iosevka Code Font Showcase

The following examples demonstrate the **Iosevka** monospace font with programming ligatures:

### JavaScript Example

```javascript
// Arrow functions with ligatures
const fetchData = async (url) => {
  const response = await fetch(url);
  return response.json();
};

// Comparison operators
if (x >= 10 && y <= 5) {
  console.log('Condition met!');
}

// Template literals
const message = `Hello ${name}, today is ${new Date()}`;
```

### Python Example

```python
# Function definition with type hints
def calculate_average(numbers: list[float]) -> float:
    return sum(numbers) / len(numbers) if numbers else 0.0

# List comprehension
squares = [x**2 for x in range(10) if x % 2 == 0]

# F-strings and operators
result = f"Average: {calculate_average([1, 2, 3, 4, 5]):.2f}"
```

### CSS Example

```css
/* CSS with ligatures and arrows */
.button {
  background: linear-gradient(45deg, #007acc, #0099ff);
  border-radius: 8px;
  transition: all 0.3s ease;
}

.button:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0, 122, 204, 0.3);
}

/* CSS Grid */
.grid-container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1rem;
}
```

### Rust Example

```rust
// Rust with match expressions and closures
fn fibonacci(n: u32) -> u32 {
    match n {
        0 => 0,
        1 => 1,
        _ => fibonacci(n - 1) + fibonacci(n - 2),
    }
}

// Iterator chains
let evens: Vec<i32> = (0..10)
    .filter(|&x| x % 2 == 0)
    .map(|x| x * x)
    .collect();
```

### Inline Code Examples

When referencing code inline, such as `const myVariable = 'value'` or `function getName() { return 'Stefan'; }`, the Iosevka font provides excellent readability with proper ligatures.

---

## Font Features

### Iosevka Ligatures

The Iosevka font includes programming ligatures that combine multiple characters into single glyphs:

- `=>` becomes →
- `>=` becomes ≥
- `<=` becomes ≤
- `!=` becomes ≠
- `===` becomes a triple line
- `->` becomes →
- `<-` becomes ←

### Typography Benefits

**Nunito Sans advantages:**
- Excellent screen readability
- Multiple weights (300, 400, 600, 700, 800)
- Clean, modern appearance
- Good spacing and kerning

**Iosevka advantages:**
- Programming ligatures
- Consistent character width
- Clear distinction between similar characters (0/O, 1/l/I)
- Optimized for code readability

---

## Color Scheme

The site uses a clean color palette:

- **Light theme**: White background with dark blue text (#141c2b)
- **Dark theme**: Dark blue background with white text
- Automatic switching based on system preferences

This creates excellent contrast and readability in both light and dark environments.