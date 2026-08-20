#Requires AutoHotkey v2.0
#SingleInstance Force

; Easy Sanskrit
; AutoHotkey v2 / ASCII-only source
;
; Special rule:
;   r.   -> vocalic r
;   r.=  -> long vocalic r
;   l.   -> vocalic l
;   l.=  -> long vocalic l
;
; The script waits briefly after r. or l. to see whether "=" follows.
; All Sanskrit output is generated with Unicode code points via Chr().
;
; Ctrl+Alt+F12 toggles all conversions on/off.

; ------------------------------------------------------------
; For ordinary replacements
; ------------------------------------------------------------

Add(trigger, output) {
    Hotstring(":*?CT:" trigger, output)
}

; ------------------------------------------------------------
; For r. / r.= and l. / l.=
; ------------------------------------------------------------

Vocalic(shortCodePoint, longCodePoint) {
    ; Output the short vocalic letter first. / まず短母音を出力
    SendText Chr(shortCodePoint)

    ; Watch the next typed character for up to 3 seconds. / 短母音入力後3秒待つ（「=」が入力れるか待つ）
    ; V means the typed character remains visible. / Vは入力された文字を可視化するの意味
    ih := InputHook("L1 T3 V")
    ih.Start()
    ih.Wait()

    if (ih.Input = "=") {
        ; Delete the short vocalic letter and the visible "=". / 「=」が入力されたら文字を消して改めて文字表示
        Send "{Backspace 2}"
        SendText Chr(longCodePoint)
    }
}

; ------------------------------------------------------------
; Vowels 母音
; ------------------------------------------------------------

Add("a=", Chr(0x0101))
Add("i=", Chr(0x012B))
Add("u=", Chr(0x016B))

Add("A=", Chr(0x0100))
Add("I=", Chr(0x012A))
Add("U=", Chr(0x016A))

; ------------------------------------------------------------
; Vocalic r and l Vocalic関数コール
; ------------------------------------------------------------

:*?C:r.::
{
    Vocalic(0x1E5B, 0x1E5D)
}

:*?C:l.::
{
    Vocalic(0x1E37, 0x1E39)
}

:*?C:R.::
{
    Vocalic(0x1E5A, 0x1E5C)
}

:*?C:L.::
{
    Vocalic(0x1E36, 0x1E38)
}

; ------------------------------------------------------------
; Nasals and anusvara / 鼻音とアヌスヴァーラ （小文字・大文字）
; ------------------------------------------------------------

Add("n^", Chr(0x1E45))
Add("n~", Chr(0x00F1))
Add("n.", Chr(0x1E47))
Add("m.", Chr(0x1E43))

Add("N^", Chr(0x1E44))
Add("N~", Chr(0x00D1))
Add("N.", Chr(0x1E46))
Add("M.", Chr(0x1E42))

; Alternative anusvara with dot above / 文献によって上に点あり
Add("m^", Chr(0x1E41))
Add("M^", Chr(0x1E40))

; Candrabindu(Anunāsika) / チャンドラビンドゥ（アヌナーシカ）
Add("m~", "m" Chr(0x0310))
Add("M~", "M" Chr(0x0310))

Add("y~", "y" Chr(0x0303))
Add("l~", "l" Chr(0x0303))
Add("v~", "v" Chr(0x0303))

Add("Y~", "Y" Chr(0x0303))
Add("L~", "L" Chr(0x0303))
Add("V~", "V" Chr(0x0303))

; ------------------------------------------------------------
; Retroflex consonants / 破裂音
; ------------------------------------------------------------

Add("t.", Chr(0x1E6D))
Add("d.", Chr(0x1E0D))

Add("T.", Chr(0x1E6C))
Add("D.", Chr(0x1E0C))

; ------------------------------------------------------------
; Sibilants / 摩擦音
; ------------------------------------------------------------

Add("s'", Chr(0x015B))
Add("s.", Chr(0x1E63))

Add("S'", Chr(0x015A))
Add("S.", Chr(0x1E62))

; ------------------------------------------------------------
; Visarga / ヴィサルガ
; ------------------------------------------------------------

Add("h.", Chr(0x1E25))
Add("H.", Chr(0x1E24))

; ------------------------------------------------------------
; Optional punctuation / 見た目は同じ、でも文字コードはこっちが正しい
; ------------------------------------------------------------

Add("''", Chr(0x2019))
Add("||.", Chr(0x0965))
Add("|.", Chr(0x0964))

; Suspend/resume all conversions.
#SuspendExempt
^!F12::Suspend()
#SuspendExempt False
