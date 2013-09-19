FILES=$(shell find . -path '*/.svn*' -prune -o -print | grep \.md$ | sort)
FIRST=$(shell find . | grep \.main\.)
OUTPUT=$(shell echo ${FIRST} | sed s/\.main\.md/.pdf/)

build-document: ${FILES}
	pandoc --include-in-header=/home/marnix/.markdown-make/header.tex ${FILES} -o ${OUTPUT}
