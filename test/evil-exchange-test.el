;;; evil-exchange-test.el --- evil-exchange test

;; Copyright (C) 2017 by Dewdrops

;; Author: Dewdrops <v_v_4474@126.com>

;;; Code:


(require 'evil-exchange)
(require 'ert)

(ert-deftest eex-test-exchange-general ()
  (with-temp-buffer
    (insert "left right")
    (evil-exchange 1 4)
    (evil-exchange 6 10)
    (should (equal (buffer-string) "right left"))))

(ert-deftest eex-test-exchange-adjacent ()
  (with-temp-buffer
    (insert "leftright")
    (evil-exchange 1 4)
    (evil-exchange 5 9)
    (should (equal (buffer-string) "rightleft"))))

(ert-deftest eex-test-exchange-across-line ()
  (with-temp-buffer
    (insert "left\nright")
    (evil-exchange 1 4)
    (evil-exchange 6 10)
    (should (equal (buffer-string) "right\nleft"))))

(ert-deftest eex-test-exchange-single-letter-with-comma ()
  "regression for #4"
  (with-temp-buffer
    (insert "alpha a, beta b")
    (evil-exchange 1 6)
    (evil-exchange 10 14)
    (should (equal (buffer-string) "beta a, alpha b"))))


;;; evil-exchange-test.el ends here
