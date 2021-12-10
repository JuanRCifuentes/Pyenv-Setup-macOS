#!/bin/zsh
pyenv versions --bare --skip-aliases > Versions/python_versions.txt
for version in $(cat Versions/python_versions.txt)
do
    a=${version:t}
    pyenv local $a
    pyenv local
    pip freeze > "Versions/$a.txt"
done

rm .python-version
rm .pyenv-version