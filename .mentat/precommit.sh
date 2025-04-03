#!/bin/bash

# Format HTML and CSS files with Prettier
echo "Running Prettier on HTML and CSS files..."
prettier --write "*.html" "css/*.css"

# Validate HTML files
echo "Validating HTML files..."
html-validate "*.html"

# Lint and fix CSS files
echo "Linting and fixing CSS files..."
stylelint "css/*.css" --fix

echo "Precommit checks completed!"
