VERSION=0.1

dictfile: wordlist/kn-wordlist.txt
	wc -l wordlist/kn-wordlist.txt | awk '{print $1}'> kn_IN.dic
	cat wordlist/kn-wordlist.txt >> kn_IN.dic
	touch "$@"

distribute: dictfile
	tar -cvf hunspell-kn_$(VERSION).tar.gz kn_IN.* COPYING
