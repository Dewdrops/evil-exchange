all:
	cask

test:
	cask exec ert-runner -l evil-exchange.el

clean:
	rm -rf .cask
	rm -f *.elc test/*.elc

.PHONY: test
