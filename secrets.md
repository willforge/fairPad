# how to secure secret w/i repository

0. create a keybase account
email=$(keybase account email list | cut -d' ' -f 1)
keybase account email send-verification-email $email


1. create a personal keybase repository :

keybase git create secured
kbuser=$(keybase status | head -1 | sed -e 's/  */ /' | cut -d' ' -f 2)
git clone keybase://private/$kbuser/secured.git

2. clone fairPad
git config --global --add protocol.keybase.allow always
git clone  --branch dbug --single-branch --recursive keybase://team/distributedbrain/fairPad.git

2. allow keybase protocol
cd fairPad
git config --add protocol.keybase.allow always
git submodule update --init
# or export GIT_ALLOW_PROTOCOL="keybase:file:git:ssh:http:submodule"

3. clone the keybase submodule 
kbuser=$(keybase status | head -1 | sed -e 's/  */ /' | cut -d' ' -f 2)
git submodule add keybase://private/$kbuser/secured secured

4. create your secure/data.json file and commit it to your private repo


