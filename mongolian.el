;; based on 'cyrillic-translit'
;; http://lists.gnu.org/archive/html/emacs-devel/2003-09/msg00457.html
;;
(quail-define-package
 "mongolian-translit" "Cyrillic" "Мон" nil
 "Intuitively transliterated keyboard layout.
Most convenient for entering Mongolian but all cyrillic characters are included."
;; Should handle most cases. However:
;;   for ц (TSE) use \"c\", never \"ts\"
;;   щ (SHCHA = Bulgarian SHT) = \"shch\", \"sj\", \"/sht\" or \"/t\",
;;   э (REVERSE ROUNDED E) = \"e'\" or \"e`\"
;;   х (KHA) when after с (S) = \"x\" or \"kh\"
;;   ъ (HARD SIGN) = \"~\", Ъ (CAPITAL HARD SIGN) = \"~~\",
;;   ь (SOFT SIGN) = \"'\", Ь (CAPITAL SOFT SIGN) = \"''\",
;;   я (YA) = \"ya\", \"ja\" or \"q\".

;; Russian alphabet: a b v=w g d e yo=jo zh z i j=j' k l m n o p r s t
;; u f h=kh=x c ch sh shch=sj=/s=/sht ~ y ' e' yu=ju ya=ja=q

;; Also included are Ukrainian є (YE) = \"/e\" and ї (YI) = \"yi\", 
;; Belorussian ў (SHORT U) = \"u'\",
;; Serbo-Croatian ђ (DJE) = \"/d\", ћ (CHJE)= \"/ch\", 
;; Macedonian ѓ (GJE) = \"/g\", ѕ (DZE) = \"/s\", ќ (KJE) = \"/k\",
;; cyrillic і (I DECIMAL) = \"/i\", ј (JE) = \"/j\", 
;; љ (LJE) = \"/l\", њ (NJE) = \"/n\" and џ (DZE) =\"/z\"."
 nil t t t t nil nil nil nil nil t)

(quail-define-rules
 ("a" ?а)("b" ?б) ("v" ?в) ("w" ?в) ("g" ?г) ("d" ?д) 
; ("e" ?е) ("je" ?е) 
 ("e" ?э) ("ye" ?е) 
 ("yo" ?ё) ("jo" ?ё)
 ("zh" ?ж) ("z" ?з) ("i" ?и) 
 ("j" ?й) ("j'" ?й) ("j`" ?й) ("k" ?к) ("l" ?л)
 ("m" ?м) ("n" ?н) ("o" ?о) ("p" ?п) ("r" ?р) ("s" ?с) ("t" ?т) ("u" ?у)
 ("oe" ?ө) ("o\"" ?ө) ("ue" ?ү) ("u\"" ?ү)
 ("f" ?ф) ("x" ?х) ("h" ?х) ("kh" ?х)
 ("c" ?ц) ("ts" ?ц) ("ch" ?ч)
 ("sh" ?ш) 
 ("shch" ?щ) ("sj" ?щ) 
 ("/sht" ?щ) ("/t" ?щ) 
 ("~" ?ъ) ("y" ?ы) ("'" ?ь) ("`" ?ь) 
 ("e'" ?э) ("e`" ?э) ("@" ?э) 
 ("yu" ?ю) ("ju" ?ю) 
 ("ya" ?я) ("ja" ?я) ("q" ?я)

 ("A" ?А) ("B" ?Б) ("V" ?В) ("W" ?В) ("G" ?Г) ("D" ?Д) 
 ("E" ?Е) ("Je" ?Е) ("JE" ?Е)
 ("Yo" ?Ё) ("YO" ?Ё) ("Jo" ?Ё) ("JO" ?Ё) 
 ("Zh" ?Ж) ("ZH" ?Ж) ("Z" ?З) ("I" ?И) 
 ("J" ?Й) ("J'" ?Й) ("J`" ?Й) ("K" ?К) ("L" ?Л)
 ("M" ?М) ("N" ?Н) ("O" ?О) ("P" ?П) ("R" ?Р) ("S" ?С) ("T" ?Т) ("U" ?У)
 ("Oe" ?Ө) ("OE" ?Ө)("O\"" ?Ө) ("Ue" ?Ү) ("UE" ?Ү) ("U\"" ?Ү)
 ("F" ?Ф) ("X" ?Х) ("H" ?Х) ("Kh" ?Х) ("KH" ?Х)
 ("C" ?Ц)  ("Ts" ?Ц)  ("TS" ?Ц) ("Ch" ?Ч) ("CH" ?Ч) 
 ("Sh" ?Ш) ("SH" ?Ш) 
 ("Shch" ?Щ) ("SHCH" ?Щ) ("Sj" ?Щ) ("SJ" ?Щ) 
 ("/Sht" ?Щ) ("/SHT" ?Щ) ("/T" ?Щ) 
 ("~~" "Ъ") ("Y" ?Ы) ("''" "Ь") ("E'" ?Э) ("E`" ?Э) 
 ("Yu" ?Ю) ("YU" ?Ю) ("Ju" ?Ю) ("JU" ?Ю) 
 ("Ya" ?Я) ("YA" ?Я) ("Ja" ?Я) ("JA" ?Я) ("Q" ?Я)

;;  ("/e" ?є) ("yi" ?ї) ("u'" ?ў)
;;  ("/d" ?ђ) ("/ch" ?ћ)
;;  ("/g" ?ѓ) ("/s" ?ѕ) ("/k" ?ќ)
;;  ("/i" ?і) ("/j" ?ј) ("/l" ?љ) ("/n" ?њ) ("/z" ?џ)
;;  ("/E" ?Є) ("YE" ?Є) ("Yi" ?Ї) ("YI" ?Ї) ("U'" ?Ў) 
;;  ("/D" ?Ђ) ("/Ch" ?Ћ) ("/CH" ?Ћ)
;;  ("/G" ?Ѓ) ("/S" ?Ѕ) ("/K" ?Ќ) 
;;  ("/I" ?І) ("/J" ?Ј) ("/L" ?Љ) ("/N" ?Њ) ("/Z" ?Џ)
)


;; (quail-define-package
;;  "mongolian" "Cyrillic" "Мон" nil
;;  "Mongolian keyboard layout."
;;  nil t t t t nil nil nil nil nil t)

;; ;;  №1 -2 "3 ₮4 :5 .6 _7 ,8 %9 ?0 Е  Щ
;; ;;   Ф  Ц  У  Ж  Э  Н  Г  Ш  Ү  З  К  Ъ
;; ;;    Й  Ы  Б  Ө  А  Х  Р  О  Л  Д  П  =+
;; ;;     Я  Ч  Ё  С  М  И  Т  Ь  В  Ю

;; (quail-define-rules

;; ;; 日本語キーボードにあわせて再配置
;; ;;  ("1" ?№) ("!" ?1)
;; ;;  ("2" ?-) ("@" ?2)
;; ;;  ("3" ?\") ("#" ?3)
;; ;;  ("4" ?₮) ("$" ?4)
;; ;;  ("5" ?:) ("%" ?5)
;; ;;  ("6" ?.) ("^" ?6)
;; ;;  ("7" ?_) ("&" ?7)
;; ;;  ("8" ?,) ("*" ?8)
;; ;;  ("9" ?%) ("(" ?9)
;; ;;  ("0" ??) (")" ?0)
;; ;;  ("-" ?е) ("_" ?Е)
;; ;;  ("=" ?щ) ("+" ?Щ)

;; ;;  ("q" ?ф) ("Q" ?Ф)
;; ;;  ("w" ?ц) ("W" ?Ц)
;; ;;  ("e" ?у) ("E" ?У)
;; ;;  ("r" ?ж) ("R" ?Ж)
;; ;;  ("t" ?э) ("T" ?Э)
;; ;;  ("y" ?н) ("Y" ?Н)
;; ;;  ("u" ?г) ("U" ?Г)
;; ;;  ("i" ?ш) ("I" ?Ш)
;; ;;  ("o" ?ү) ("O" ?Ү)
;; ;;  ("p" ?з) ("P" ?З)
;; ;;  ("[" ?к) ("{" ?К)
;; ;;  ("]" ?ъ) ("}" ?Ъ)

;; ;;  ("a" ?й) ("A" ?Й)
;; ;;  ("s" ?ы) ("S" ?Ы)
;; ;;  ("d" ?б) ("D" ?Б)
;; ;;  ("f" ?ө) ("F" ?Ө)
;; ;;  ("g" ?а) ("G" ?А)
;; ;;  ("h" ?х) ("H" ?Х)
;; ;;  ("j" ?р) ("J" ?Р)
;; ;;  ("k" ?о) ("K" ?О)
;; ;;  ("l" ?л) ("L" ?Л)
;; ;;  (";" ?д) (":" ?Д)
;; ;;  ("'" ?п) ("\"" ?П)
;; ;;  ("`" ?=) ("~" ?+)

;; ;;  ("z" ?я) ("Z" ?Я)
;; ;;  ("x" ?ч) ("X" ?Ч)
;; ;;  ("c" ?ё) ("C" ?Ё)
;; ;;  ("v" ?с) ("V" ?С)
;; ;;  ("b" ?м) ("B" ?М)
;; ;;  ("n" ?и) ("N" ?И)
;; ;;  ("m" ?т) ("M" ?Т)
;; ;;  ("," ?ь) ("<" ?Ь)
;; ;;  ("." ?в) (">" ?В)
;; ;;  ("/" ?ю) ("?" ?Ю))

(quail-define-package
 "cyrillic-prefix" "Cyrillic" "Ж>" nil
 "\
Transliterated Cyrillic input method with prefix modifiers which
covers most of the current Cyrrilic scripts.

Some general principles:

1. For descenders and breve use comma, e.g. 
     ,sh for щ (Cyrillic shcha)
     ,u for ў (Cyrillic short u)
2. For barred or stroked letters use slash, e.g.
     /o for ө (Cyrillic barred o)
     /g for ғ (Cyrillic ghe with stroke)
     /ch for ҹ (Cyrillic letter che with vertical stroke)
3. For macron use backslash, e.g.
     \\u for ӯ (Cyrillic u with macron)
4. For diaeresis use colon, e.g.
     :e for ё (Cyrillic letter yo)
5. The semicolon modifies the letter in some other way:
     use ;e for э (Russian reversed e)
     use ;i for і (Belarusian-Ukrainian i)
     use ;j for ј (Cyrillic je)
     use ;l and ;n for љ and њ (Cyrillic lje and nje)
     use ;s for ѕ (Cyrillic dze)
     use ;z for џ (Cyrillic dzhe)
     use ;u for ү (straight u)
     use ;k for ҡ (Bashkir ka)
     use ;h for һ (Cyrillic shha)
8. For sh (ш), ch (ч), zh (ж), schwa (ә) and Ukrainian ie (є) use 
      sh, ch, zh, sw and ye.

Some other key combinations:
     /_ for non-break space
     :- for en-dash
     :-- for em-dash
     \", for „ (double low quotation mark)
     \"` for “ (double 6-quotation mark)
     \"' for ” (double 9-quotation mark)
     '` for ‘ (single 6-quotation mark)
     '' for ’ (single 9-quotation mark)
     \"< for « (left double angle quotation mark)
     \"> for » (right double angle quotation mark)
     '< for ‹ (left angle quotation mark)
     '> for › (right angle quotation mark)
     :$ for € (euro)
     :T for ₮ (tugrik)
     :Y for ¥ (yen)
     :L for £ (pound)
     :c for ¢ (cent)
     :S for § (section)
     :N for № (cyrillic number sign)
     :o for ° (degree)
     :C for © (copyright)
     :R for ® (registered)
     :tm for ™ (trademark)
     :. for · (middle dot)
     :* for • (bullet)
     :~ for ¬ (not)
     :p for ¶ (pilcrow)
     :% for ‰ (permile)
     :+- for ± (plus-minus)
     :x for × (multiplication)
     :: for ÷ (division)
     :m for µ (micro)
"
 nil t t t t nil nil nil nil nil t)

(quail-define-rules
 ;; U+0000 - U+00ff
 ("/_" ? ) (":S" ?§) (":C" ?©) (":R" ?®) (":~" ?¬) (":o" ?°)
 (":p" ?¶) (":." ?·) (":+-" ?±) (":Y" ?¥) ("::" ?÷) (":c" ?¢)
 (":x" ?×) (":L" ?£) (":m" ?µ)
 ;; U+0400 - U+040f
 (":E" ?Ё) ("/D" ?Ђ) ("\\G" ?Ѓ) (";L" ?Љ) (";N" ?Њ) ("/H" ?Ћ) (",U" ?Ў)
 (";S" ?Ѕ) ("\\K" ?Ќ) (";Z" ?Џ) ("YE" ?Є) ("Ye" ?Є) (":I" ?Ї) (";J" ?Ј)
 (";I" ?І)
 ;; U+0410 - U+041f
 ("A" ?А) ("B" ?Б) ("V" ?В) ("W" ?В) ("G" ?Г) ("D" ?Д) 
 ("E" ?Е) ("Je" ?Е) ("JE" ?Е)
 ("Zh" ?Ж) ("ZH" ?Ж) ("Z" ?З) ("I" ?И) 
 ("J" ?Й) (",I" ?Й) ("K" ?К) ("L" ?Л)
 ("M" ?М) ("N" ?Н) ("O" ?О) ("P" ?П)
 ;; U+0420 - U+042f
 ("R" ?Р) ("S" ?С) ("T" ?Т) ("U" ?У)
 ("F" ?Ф) ("H" ?Х)
 ("C" ?Ц) ("Ch" ?Ч) ("CH" ?Ч) 
 ("Sh" ?Ш) ("SH" ?Ш) 
 (",Sh" ?Щ) (",SH" ?Щ)
 ("X" ?Ъ) ("Y" ?Ы) ("``" ?Ь)
 (";E" ?Э)
 ("Yu" ?Ю) ("YU" ?Ю) ("Ju" ?Ю) ("JU" ?Ю) 
 ("Ya" ?Я) ("YA" ?Я) ("Ja" ?Я) ("JA" ?Я) ("Q" ?Я)
 ;; U+0430 - U+043f
 ("a" ?а)("b" ?б) ("v" ?в) ("w" ?в) ("g" ?г) ("d" ?д)
 ("e" ?е) ("je" ?е) 
 ("zh" ?ж) ("z" ?з) ("i" ?и) 
 ("j" ?й) (",i" ?й) ("k" ?к) ("l" ?л)
 ("m" ?м) ("n" ?н) ("o" ?о) ("p" ?п)
 ;; U+0440 - U+044f
 ("r" ?р) ("s" ?с) ("t" ?т) ("u" ?у)
 ("f" ?ф) ("h" ?х)
 ("c" ?ц) ("ch" ?ч)
 ("sh" ?ш) (",sh" ?щ)
 ("x" ?ъ) ("y" ?ы) ("`" ?ь) 
 (";e" ?э)
 ("yu" ?ю) ("ju" ?ю) 
 ("ya" ?я) ("ja" ?я) ("q" ?я)
 ;; U+0450 - U+045f
 ("\\g" ?ѓ) ("ye" ?є) (":i" ?ї) ("/d" ?ђ) ("/h" ?ћ) (";s" ?ѕ) ("\\k" ?ќ)
 (";l" ?љ) (";n" ?њ) (";z" ?џ) (",u" ?ў) (";j" ?ј) (";i" ?і) (":e" ?ё)
 ;; U+0460 - U+046f
 ;; U+0470 - U+047f
 ;; U+0480 - U+048f
 ;; U+0490 - U+049f
 (",Zh" ?Җ) (",ZH" ?Җ) (",zh" ?җ) ("/G" ?Ғ) ("/g" ?ғ) (",K" ?Қ) (",k" ?қ)
 (",Z" ?Ҙ) ("/K" ?Ҝ) (",z" ?ҙ) ("/k" ?ҝ)
 ;; U+04a0 - U+04af
 (";K" ?Ҡ) (";k" ?ҡ) (";U" ?Ү) (";u" ?ү) (",N" ?Ң) (",n" ?ң)
 (",S" ?Ҫ) (",s" ?ҫ)
 ;; U+04b0 - U+04bf
 (",H" ?Ҳ) (",X" ?Ҳ) (",CH" ?Ҷ) (",Ch" ?Ҷ) ("/Ch" ?Ҹ) ("/CH" ?Ҹ)
 (";H" ?Һ) (";h" ?һ) (",h" ?ҳ) (",x" ?ҳ) (",ch" ?ҷ) ("/ch" ?ҹ)
 ("/U" ?Ұ) ("/u" ?ұ)
 ;; U+04c0 - U+04cf
 ;; U+04d0 - U+04df
 ("SW" ?Ә) ("Sw" ?Ә) ("sw" ?ә)
 ;; U+04e0 - U+04ef
 ("\\U" ?Ӯ) ("\\I" ?Ӣ) ("\\i" ?ӣ) ("/O" ?Ө) ("/o" ?ө) ("\\u" ?ӯ)
 ;; U+04f0 - U+04ff
 ;; U+2000 - U+20ff
 ("\"," ?„) ("'`" ?‘) ("''" ?’) ("\"`" ?“) ("\"'" ?”) ("\"<" ?«) ("\">" ?»)
 ("'<" ?‹) ("'>" ?›) (":.." ?…) (":$" ?€) (":T" ?₮) (";%" ?‰) 
 (":-" ?–) (":--" ?—) (":*" ?•)
 ;; U+2100 - U+22ff
 (":tm" ?™) (":N" ?№)
 )


(set-language-info-alist
 "Mongolian" `((documentation . "\
Support for Mongolian with UTF-8 coding system.")
	     (charset ascii cyrillic-iso8859-5 mule-unicode-0100-24ff)
	     (sample-text . "\
Өшөөс сурсан үндэсний хэл мартаж
  болшгүй соёл
  Үхтэл орших төрлөх нутаг
  салж болшгүй орон.
        Б. Рэнчин")
	     (coding-system utf-8)
	     (coding-priority utf-8)
	     (setup-function
	      . (lambda ()
		  ;; Use Unicode font under Windows. Jason Rumney fecit.
		  (if (and (fboundp 'w32-add-charset-info)
			   (not (boundp 'w32-unicode-charset-defined)))
		      (w32-add-charset-info "iso10646-1" 
					    'w32-charset-ansi t))))
	     (dependency unify-8859-on-encoding-mode unify-8859-on-decoding-mode)
	     (input-method . "mongolian-translit"))
 '("Cyrillic"))



(quail-define-package
 "manju-translit" "Latin" "MAN" t
 "Transliterating Manchu Script
" nil t nil nil nil nil nil nil nil nil t)

(quail-define-rules
 ("X" ?Š)
 ("V" ?Ū)
 ("x" ?š)
 ("v" ?ū)

 ("XX" ?X)
 ("VV" ?V)
 ("xx" ?x)
 ("vv" ?v)
 )

(quail-define-package
 "mongolian-latin-translit" "Latin" "Mon" t
 "Transliterating Manchu Script
" nil t nil nil nil nil nil nil nil nil t)

(quail-define-rules
 ("C" ?Č)
 ("GH" ?Γ)
 ("KK" ?Ḳ)
 ("SH" ?Š)
 ("ZH" ?Ž)
 ("EE" ?Ê)
 ("OE" ?Ö)
 ("UE" ?Ü)

 ("c" ?č)
 ("j" ?ǰ)
 ("gh" ?γ)
 ("kk" ?ḳ)
 ("sh" ?š)
 ("zh" ?ž)
 ("ee" ?ê)
 ("oe" ?ö)
 ("ue" ?ü)

 ("CC" ?C)
 ("GHH" ["GH"])
 ("KKK" ["KK"])
 ("SHH" ["SH"])
 ("ZHH" ["ZH"])
 ("EEE" ["ee"])
 ("OEE" ["OE"])
 ("cc" ?c)
 ("jj" ?j)
 ("ghh" ["gh"])
 ("kkk" ["kk"])
 ("shh" ["sh"])
 ("zhh" ["zh"])
 ("oee" ["oe"])
 ("UEE" ["UE"])
 ("uee" ["ue"])
 )
