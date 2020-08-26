#

date=$(date +%Y-%m-%d)
git show dbug:pad.html | grep -v -w 'callee' | sed -e 's/DEBUG/MASTER/i' > pad.html
git add pad.html
rev=$(git rev-parse --short dbug)
git commit -m "automatic conversion from dbug $rev on $date"
