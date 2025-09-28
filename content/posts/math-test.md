+++
title = 'Math Rendering Test'
date = 2025-09-28T11:00:00+02:00
draft = false
description = 'Testing MathJax math rendering capabilities on the blog'
tags = ['math', 'katex', 'statistics', 'test']
categories = ['Demo']
author = 'Stefan'
+++

# MathJax Math Rendering Test

This page demonstrates the mathematical rendering capabilities using MathJax. Perfect for a statistician's blog!

## Inline Math

Here's some inline math: $x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$ which is the quadratic formula.

Another example: The probability density function of a normal distribution is $f(x) = \frac{1}{\sigma\sqrt{2\pi}} e^{-\frac{1}{2}\left(\frac{x-\mu}{\sigma}\right)^2}$.

## Display Math

### Statistics Formulas

The sample variance formula:

$$s^2 = \frac{1}{n-1} \sum_{i=1}^{n} (x_i - \bar{x})^2$$

Bayes' theorem:

$$P(A|B) = \frac{P(B|A) \cdot P(A)}{P(B)}$$

### Linear Algebra

Matrix multiplication:

$$\mathbf{C} = \mathbf{A} \times \mathbf{B}$$

$$c_{ij} = \sum_{k=1}^{n} a_{ik} b_{kj}$$

Eigenvalue equation:

$$\mathbf{A}\mathbf{v} = \lambda\mathbf{v}$$

### Calculus

The fundamental theorem of calculus:

$$\int_a^b f'(x)\,dx = f(b) - f(a)$$

L'Hôpital's rule:

$$\lim_{x \to c} \frac{f(x)}{g(x)} = \lim_{x \to c} \frac{f'(x)}{g'(x)}$$

### Volatility Forecasting

Since you work with volatility forecasting, here are some relevant formulas:

GARCH(1,1) model:

$$\sigma_t^2 = \omega + \alpha \epsilon_{t-1}^2 + \beta \sigma_{t-1}^2$$

Where:
- $\sigma_t^2$ is the conditional variance at time $t$
- $\omega$ is a constant
- $\alpha$ and $\beta$ are parameters
- $\epsilon_{t-1}^2$ is the lagged squared residual

Value at Risk (VaR):

$$\text{VaR}_\alpha = \mu + \sigma \Phi^{-1}(\alpha)$$

Where $\Phi^{-1}$ is the inverse of the standard normal cumulative distribution function.

### Machine Learning

Logistic regression sigmoid function:

$$\sigma(z) = \frac{1}{1 + e^{-z}}$$

Cross-entropy loss:

$$L = -\frac{1}{N} \sum_{i=1}^{N} [y_i \log(\hat{y}_i) + (1-y_i) \log(1-\hat{y}_i)]$$

### Complex Mathematical Expressions

The Fourier transform:

$$\mathcal{F}\{f(t)\} = \int_{-\infty}^{\infty} f(t) e^{-2\pi i \xi t} dt$$

The Black-Scholes equation:

$$\frac{\partial V}{\partial t} + \frac{1}{2}\sigma^2 S^2 \frac{\partial^2 V}{\partial S^2} + rS\frac{\partial V}{\partial S} - rV = 0$$

## Greek Letters and Special Symbols

Common statistical symbols:
- $\mu$ (mu) - population mean
- $\sigma$ (sigma) - population standard deviation
- $\alpha$ (alpha) - significance level
- $\beta$ (beta) - regression coefficient
- $\gamma$ (gamma) - gamma function parameter
- $\lambda$ (lambda) - rate parameter
- $\theta$ (theta) - parameter of interest
- $\phi$ (phi) - normal density function
- $\Phi$ (Phi) - normal cumulative distribution function

Mathematical operators:
- $\sum$ - summation
- $\prod$ - product
- $\int$ - integral
- $\partial$ - partial derivative
- $\nabla$ - gradient
- $\infty$ - infinity
- $\in$ - element of
- $\subseteq$ - subset
- $\cup$ - union
- $\cap$ - intersection

## Matrix Notation

A 3×3 matrix:

$$\mathbf{A} = \begin{pmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33}
\end{pmatrix}$$

## Fractions and Binomials

Binomial coefficient:

$$\binom{n}{k} = \frac{n!}{k!(n-k)!}$$

Continued fraction:

$$x = a_0 + \cfrac{1}{a_1 + \cfrac{1}{a_2 + \cfrac{1}{a_3 + \cfrac{1}{\ddots}}}}$$

## Testing Different Delimiters

Using `$$` delimiters:
$$E[X] = \mu$$

Using `\[` and `\]` delimiters:
\[
\text{Var}(X) = E[X^2] - (E[X])^2
\]

Using parentheses `\(` and `\)`: \(\pi \approx 3.14159\)

## Aligned Equations

$$\begin{align}
f(x) &= ax^2 + bx + c \\
f'(x) &= 2ax + b \\
f''(x) &= 2a
\end{align}$$

## Conclusion

This demonstrates that MathJax is working correctly for mathematical typesetting. Perfect for a blog that will cover statistical modeling, machine learning, and data science topics!

---

*Math rendering powered by [MathJax](https://www.mathjax.org/)*