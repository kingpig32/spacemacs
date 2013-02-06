;; -*- coding:euc-jp-unix; -*-
;; close-open-paren.el : insert appropriate closing parenthesis.
;; Ref.: http://www.emacswiki.org/emacs/UniversialCloseParen
;;       http://emacswiki.org/emacs/EmacsSyntaxTable
;;       skk/skk-tankan.el

(defconst close-open-paren-syntax-table
    (let ((table (make-syntax-table)))
      (modify-syntax-entry ?{ "(}" table)
      (modify-syntax-entry ?} "){" table)
      (modify-syntax-entry ?\( "()" table)
      (modify-syntax-entry ?\) ")(" table)
      (modify-syntax-entry ?\[ "(]" table)
      (modify-syntax-entry ?\] ")[" table)
      (modify-syntax-entry ?< "(>" table)
      (modify-syntax-entry ?> ")<" table)
      (modify-syntax-entry ?（ "(）" table) ; 始め小括弧,始め丸括弧, LEFT PARENTHESIS
      (modify-syntax-entry ?） ")（" table) ; 終わり小括弧,終わり丸括弧, RIGHT PARENTHESIS
      (modify-syntax-entry ?〔 "(〕" table) ; 始めきっこう(亀甲)括弧, LEFT TORTOISE SHELL BRACKET
      (modify-syntax-entry ?〕 ")〔" table) ; 終わりきっこう(亀甲)括弧, RIGHT TORTOISE SHELL BRACKET
      (modify-syntax-entry ?［ "(］" table) ; 始め大括弧,始め角括弧, LEFT SQUARE BRACKET
      (modify-syntax-entry ?］ ")［" table) ; 終わり大括弧,終わり角括弧, RIGHT SQUARE BRACKET
      (modify-syntax-entry ?｛ "(｝" table) ; 始め中括弧,始め波括弧, LEFT CURLY BRACKET
      (modify-syntax-entry ?｝ ")｛" table) ; 終わり中括弧,終わり波括弧, RIGHT CURLY BRACKET
      (modify-syntax-entry ?〈 "(〉" table) ; 始め山括弧, LEFT ANGLE BRACKET
      (modify-syntax-entry ?〉 ")〈" table) ; 終わり山括弧, RIGHT ANGLE BRACKET
      (modify-syntax-entry ?《 "(》" table) ; 始め二重山括弧, LEFT DOUBLE ANGLE BRACKET
      (modify-syntax-entry ?》 ")《" table) ; 終わり二重山括弧, RIGHT DOUBLE ANGLE BRACKET
      (modify-syntax-entry ?「 "(」" table) ; 始めかぎ括弧, LEFT CORNER BRACKET
      (modify-syntax-entry ?」 ")「" table) ; 終わりかぎ括弧, RIGHT CORNER BRACKET
      (modify-syntax-entry ?『 "(』" table) ; 始め二重かぎ括弧, LEFT WHITE CORNER BRACKET
      (modify-syntax-entry ?』 ")『" table) ; 終わり二重かぎ括弧, RIGHT WHITE CORNER BRACKET
      (modify-syntax-entry ?【 "(】" table) ; 始めすみ付き括弧, LEFT BLACK LENTICULAR BRACKET
      (modify-syntax-entry ?】 ")【" table) ; 終わりすみ付き括弧, RIGHT BLACK LENTICULAR BRACKET
      (modify-syntax-entry ?\\ "'" table)
      table)
    "A syntax table for pairs of parentheses.")

(defun close-open-paren ()
  (interactive)
  (let (pos closing)
  (with-syntax-table close-open-paren-syntax-table    ; 検索には上の専用文法テーブルを利用
	  (setq pos (save-excursion (up-list -1) (point)))  ; 開き括弧の位置をposへ代入
	  (setq closing (matching-paren (char-after pos)))) ; posの位置にある開き括弧対応する閉じ括弧をclosingへ
	(insert closing)))                                  ; 閉じ括弧を現在の位置へ挿入

(provide 'auto-close-parens)
