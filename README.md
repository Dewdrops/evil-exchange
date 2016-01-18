English is not my first language, so feel free to correct me of any mistake.

evil-exchange
============

Easy text exchange operator for Evil. This is the port of [vim-exchange](https://github.com/tommcdo/vim-exchange) by Tom McDonald.

Default bindings
--------

`gx` (evil-exchange)

On the first use, define (and highlight) the first {motion} to exchange. On the second use,
define the second {motion} and perform the exchange.

`gX` (evil-exchange-cancel)

Clear any {motion} pending for exchange.

### Notes

* `gx` (and `gX`) can also be used from visual mode, which is sometimes easier than coming
  up with the right {motion}
* If you're using the same motion again (e.g. exchanging two words using
  `gxiw`), you can use `.` (evil-repeat) the second time.
* `gxx` works as you expect.

Installation
------------

```lisp
(require 'evil-exchange)
;; change default key bindings (if you want) HERE
;; (setq evil-exchange-key (kbd "zx"))
(evil-exchange-install)
```

Customization
-------

You can change the default bindings by customizing `evil-exchange-key` and/or `evil-exchange-cancel-key` BEFORE  `evil-exchange-install` is called.

[Experienmental] Vim-compatible key bindings
-------

Due to the way how evil (and emacs) implements key bindings, `evil-exchange` can't be bound to `cx` (which is the default bindings of the original
vim plugin) by customizing `evil-exchange-key` option. If you prefer the key bindings suggested by vim-exchange, you can try the settings below:

```lisp
(require 'evil-exchange)
(evil-exchange-cx-install)
```

The `evil-exchange-cx-install` function tries to mimic the original vim plugin's behaviour, i.e. `cx` in normal state bound to `evil-exchange`,
`cxc` in normal state bound to `evil-exchange-cancel`, and `X` in visual state bound to `evil-exchange`.

