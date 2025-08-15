# Dotfiles

This repository contains my dotfiles, which set up my development environments
based on my personal preferences and workflows.

The dotfiles are managed using [chezmoi], which makes it easy to manage files
across multiple machines and supports advanced features like templating. A new
machine can be provisioned using a single command, which installs [chezmoi] and
applies the dotfiles from the `jdno/dotfiles` repository:

```shell
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply jdno
```

## License

This project is released under the terms of the [MIT License](./LICENSE).

[chezmoi]: https://www.chezmoi.io/
