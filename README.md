# Velocity's Emacs Config

Yes, it’s another bloody Emacs config.

Because two wasn’t enough.

> **Disclaimer!** This is not a community framework or distribution or starter kit or what have you. It’s a private configuration and an ongoing experiment to feel out Emacs from scratch. I make no guarantees that it’ll work out of the box for anyone that isn’t me. It might even just change entirely out of nowhere.
>
> Yes, I did steal this disclaimer (and part of this README) from [hlissner/dotfiles](https://github.com/hlissner/dotfiles).

## Package Management

My config uses `use-package`, and all the packages are defined in `packages.el`.

Try not to use <kbd>M-x</kbd> `package-install` - use `:ensure t` inside the `use-package` blocks instead.

Of course, that implies you, the reader, will use this config. And you probably shouldn't.

## Specified Packages

This is (probably) every package that's specified in `packages.el`.

### Editing

- **yasnippet**: Enables snippet support.
- **company**: Provides auto-completion using `company-mode`.
- **affe**: A fuzzy finder for quick navigation and file selection. I'm not sure how it works though.

### Languages

- **markdown-mode**: Enhances Markdown editing.
- **rust-mode**: Configures Rust-specific settings.

### LSP

- **lsp-mode**: Provides Language Server Protocol support. Right now only Rust is configured.
- **lsp-ui**: Enhances the Language Server Protocol experience.
- **company-lsp**: Integrates `company` with Language Server Protocol.

### User interface

- **vertico**: Enhances minibuffer completion.
- **savehist**: Saves minibuffer history.
- **which-key**: Helps discover keybindings.
- **switch-window**: More powerful window switching with `C-x o`.

### Visual enhancements

- **adaptive-wrap**: Enables adaptive wrapping for `visual-line-mode`.
- **writeroom-mode**: Creates a distraction-free writing environment.
- **mixed-pitch**: Variable pitch mode, that keeps fixed pitch where needed.
- **doom-themes**: Provides a selection of themes from Doom Emacs.
- **marginalia**: Provides descriptions in the minibuffer margin.
- **ligature**: Enables ligature support for specified symbols.

## Infrequently Asked Questions

* Why Emacs?

  Yes.
  
* How do I learn Emacs?

  Short answer: You just do.

  Long (`i32`) answer: No, really. You just do.

  `i64` answer: I'm serious. You just learn it.

  `u64` answer: Alright, fine. Here's how:

  + Use a starter kit like Doom Emacs or Spacemacs if it makes it easier.
  + Watch YouTube tutorials - I recommend System Crafters and DistroTube.
  + Read some Emacs Lisp tutorials - learning Elisp is paramount for a good Emacs config.
  + If you know Vim, try `evil-mode`. (Don't use `viper-mode`.)
