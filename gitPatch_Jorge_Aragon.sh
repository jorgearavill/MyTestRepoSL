#! /bin/bash
echo "This script allows the user to apply an specific patch"
cd sl
pwd

echo "Changing to master"

git checkout  master > /dev/null

git am patches/0001-My-last-commit-to-new-File.patch

echo " my_custom_patch_file.patch applied to master"

search="Jorge"
replace="Gerardo"

#cd patches
fileName= "patches/0001-My-last-commit-to-new-File.patch"

if [[ $search != "" && $replace != "" ]]; then
  sed -i "s/$search/$replace/" $filename
fi

git am 0001-My-last-commit-to-new-File.patch

