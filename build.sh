#!/bin/bash
# Created: 2023-11-06 17:21:54
# Last Modified: 2023-11-28 00:59:42

mkdir -p SOURCES
mkdir -p SPECS

cp dingtalk-bin.spec SPECS/
cp  dingtalk-bin.desktop dingtalk-launcher.sh dingtalk.svg libcairo.so.2 xdg-open README*.md LICENSE SOURCES/

sudo dnf builddep SPECS/dingtalk-bin.spec
spectool -gR SPECS/dingtalk-bin.spec
rpmbuild -ba SPECS/dingtalk-bin.spec

echo "sudo dnf install $HOME/rpmbuild/RPMS/x86_64/dingtalk-bin-"
