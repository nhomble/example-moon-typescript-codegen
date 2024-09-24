#!/usr/bin

PROJECT_DIR="$1"
echo $PROJECT_DIR
moonContent=$(cat "$PROJECT_DIR/moon.yml")
gitignoreContent=$(cat "$PROJECT_DIR/.gitignore")
packageJsonContent=$(cat "$PROJECT_DIR/package.json")
tsconfigJsonContent=$(cat "$PROJECT_DIR/tsconfig.json")

rm -rvf "$PROJECT_DIR"
mkdir "$PROJECT_DIR"
echo "$moonContent" > "$PROJECT_DIR/moon.yml"
echo "$gitignoreContent" > "$PROJECT_DIR/.gitignore"
echo "$packageJsonContent" > "$PROJECT_DIR/package.json"
echo "$tsconfigJsonContent" > "$PROJECT_DIR/tsconfig.json"
