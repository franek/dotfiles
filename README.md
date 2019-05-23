Dotfiles managed by chezmoi
====


Getting started
----

These dotfiles are managed through [chezmoi](https://github.com/twpayne/chezmoi). You need to install before getting these configurations files.

Configuration
---

This configuration uses KeepassXC in order to store some credentials. You should indicate to chezmoi where to find your KeepassXC database.

```
$ chezmoi edit-config
```

```
[keepassxc]
  database = "/home/user/path/to/database.kdbx"
```


