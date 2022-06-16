# pre-commit-hooks

## Shell

```yaml
- repo: https://github.com/rwxd/pre-commit-hooks
  rev: main
  hooks:
  - id: shellcheck
    args: [-e, SC1091]

  - id: shfmt

  - id: shfmt-docker
```

## Terraform

```yaml
- repo: https://github.com/rwxd/pre-commit-hooks
  rev: main
  hooks:
  - id: terraform-fmt
```
