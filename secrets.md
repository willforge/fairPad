# how to secure secret w/i repository

0. create a keybase account
email=$(keybase account email list | cut -d' ' -f 1)
keybase account email send-verification-email $email


1. create a personal keybase repository :

keybase git create secured

git clone  --branch dbug --single-branch --recursive keybase://team/distributedbrain/fairPad

2. allow keybase protocol
git config --add protocol.keybase.allow user
# or export GIT_ALLOW_PROTOCOL="keybase;file;git;ssh;http;submodule"

3. clone the keybase submodule 
kbuser=$(keybase status | head -1 | sed -e 's/  */ /' | cut -d' ' -f 2)
git submodule add keybase://private/$kbuser/secured secured
git clone keybase://private/$kbuser/secured ../secured

4. create your secure/data.json file and commit it to your private repo


