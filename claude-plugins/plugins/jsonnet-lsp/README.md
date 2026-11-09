# jsonnet-lsp

Jsonnet language server for Claude Code, using [grafana/jsonnet-language-server](https://github.com/grafana/jsonnet-language-server) in Tanka mode (`-t`), same as the Neovim config.

## Installation

`./install` installs the server and this plugin. To do it by hand:

```bash
go install github.com/grafana/jsonnet-language-server@latest
claude plugin marketplace add ~/.dotfiles/claude-plugins
claude plugin install jsonnet-lsp@sleemer
```
