#

git show dbug:pad.html | grep -v -w 'callee' | sed -e 's/DEBUG/MASTER/i' > pad.html
