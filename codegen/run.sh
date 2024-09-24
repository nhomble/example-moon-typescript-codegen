#!/bin/sh

PROJECT_DIR="$1"
PROJECT_NAME="$2"
CODEGEN_DIR="./codegen"

VARS=$(mktemp)
cat > $VARS <<EOL
{
  "name": "$PROJECT_NAME"
}
EOL

echo $VARS
# pnpm exec hbs --data $VARS "$CODEGEN_DIR/package.hbs" -o "$PROJECT_DIR" -e json
# pnpm exec hbs --data $VARS "$CODEGEN_DIR/tsconfig.hbs" -o "$PROJECT_DIR" -e json
mkdir "$PROJECT_DIR/src"
pnpm exec hbs --data $VARS "$CODEGEN_DIR/index.hbs" -o "$PROJECT_DIR/src" -e ts

