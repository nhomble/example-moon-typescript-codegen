# example of typescript monorepo with moon and code generation

## Usage

```
moon :run
```

## Dependency Graph

```
moon action-graph example-app:run --dependents
```

## Issues

### `codegen` is not a dependency of `run`

While the action-graph does not show an edge between the `example-app` and the `example-codegen`, we would definitely expect this from both:
- the [task definition](./.moon/tasks/typescript-application.yml#L10) depends on other builds (which correctly does the `example-lib`) and the [lib build depends on codegen](./.moon/tasks/typescript-library.yml#L16)
- the [package.json](./apps/example-app/package.json#L9)

## Tested with

| tool | version |
| ---- | ------- |
| moon | 1.27.8  |
