#!/bin/bash

VersionString=`grep -E 's.version.*=' GSUserCenter_Extension.podspec`
VersionNumber=`tr -cd 0-9 <<<"$VersionString"`

NewVersionNumber=$(($VersionNumber + 1))
LineNumber=`grep -nE 's.version.*=' GSUserCenter_Extension.podspec | cut -d : -f1`
sed -i "" "${LineNumber}s/${VersionNumber}/${NewVersionNumber}/g" GSUserCenter_Extension.podspec

echo "current version is ${VersionNumber}, new version is ${NewVersionNumber}"

git add .
git commit -am Extension-${NewVersionNumber}
git tag Extension-${NewVersionNumber}
git push origin master --tags
pod repo push [RepoName] GSUserCenter_Extension.podspec --verbose --allow-warnings --use-libraries --use-modular-headers

