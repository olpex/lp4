#!/bin/bash

# Install Node.js packages for HTML/CSS validation and formatting
npm install -g html-validate stylelint stylelint-config-standard prettier

# Create Stylelint configuration
cat > .stylelintrc.json << EOF
{
  "extends": "stylelint-config-standard",
  "rules": {
    "selector-class-pattern": "^[a-z][a-zA-Z0-9]*(__[a-z][a-zA-Z0-9]*)?(__[a-z][a-zA-Z0-9]*)*$"
  }
}
EOF

# Create Prettier configuration
cat > .prettierrc << EOF
{
  "singleQuote": true,
  "tabWidth": 2,
  "printWidth": 100,
  "htmlWhitespaceSensitivity": "css"
}
EOF

# Create HTML-validate configuration
cat > .htmlvalidate.json << EOF
{
  "rules": {
    "doctype-style": "off",
    "void-style": "off"
  }
}
EOF

echo "Setup completed successfully!"
