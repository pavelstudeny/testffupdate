#!/bin/bash
set -e -E

UPDATE_HASH=`sha256sum -b pam.xpi | cut -d" " -f1`
#jar xf %new.build.dir%/%product%/%channel%/xpi/pam.xpi manifest.json
VERSION=`cat pam.ver | awk -F"\"" '{print $4}'`

echo "{ \"addons\": { \"jid1-r1tDuNiNb4SEww@jetpack\": { \"updates\": [ { \"version\": \"$VERSION\", \"update_link\": \"https://testffupdate.unlessquit.com/pam.xpi\", \"update_hash\": \"sha256:$UPDATE_HASH\" } ] } } }" > update.json
