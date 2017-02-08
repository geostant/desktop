#!/bin/bash
setxkbmap -layout $LANGUAGES

for lang in $(echo $LANGUAGES | tr "," "\n")
do
	case $lang in
	en)
		sed -i 's/fcitx-keyboard-us:False/fcitx-keyboard-us:True/g' /root/.config/fcitx/profile
	;;
	zh-CN)
		sed -i 's/sunpinyin:False/sunpinyin:True/g' /root/.config/fcitx/profile
		sed -i 's/pinyin:False/pinyin:True/g' /root/.config/fcitx/profile
	;;
	zh-TW)
		sed -i 's/sunpinyin:False/sunpinyin:True/g' /root/.config/fcitx/profile
		sed -i 's/pinyin:False/pinyin:True/g' /root/.config/fcitx/profile
	;;
	he)
		sed -i 's/fcitx-keyboard-il:False/fcitx-keyboard-il:True/g' /root/.config/fcitx/profile
	;;
	ar)
		sed -i 's/fcitx-keyboard-ara-qwerty:False/fcitx-keyboard-ara-qwerty:True/g' /root/.config/fcitx/profile
	;;
	es)
		sed -i 's/fcitx-keyboard-es:False/fcitx-keyboard-es:True/g' /root/.config/fcitx/profile
	;;
	kr)
		sed -i 's/fcitx-keyboard-kr:False/fcitx-keyboard-kr:True/g' /root/.config/fcitx/profile
	;;
	pt)
		sed -i 's/fcitx-keyboard-pt:False/fcitx-keyboard-pt:True/g' /root/.config/fcitx/profile
	;;
	jp)
		sed -i 's/fcitx-keyboard-jp:False/fcitx-keyboard-jp:True/g' /root/.config/fcitx/profile
	;;
	ru)
		sed -i 's/fcitx-keyboard-ru:False/fcitx-keyboard-ru:True/g' /root/.config/fcitx/profile
	;;
	fr)
		sed -i 's/fcitx-keyboard-fr:False/fcitx-keyboard-fr:True/g' /root/.config/fcitx/profile
	;;
	de)
		sed -i 's/fcitx-keyboard-de:False/fcitx-keyboard-de:True/g' /root/.config/fcitx/profile
	;;
	esac
done
