#!/bin/zsh

# Install python versions
for version in $(cat Versions/python_versions.txt)
do
    if [[ $version == *"/"* ]]; then
        
    else
        pyenv install $version -s
        echo Ready Python version $version
    fi
done

# Create virtual environments
for version in $(cat Versions/python_versions.txt)
do
    if [[ $version == *"/"* ]]; then
        pVersion=${version:h1}
        venv=${version:t}
        pyenv virtualenv $pVersion $venv
        echo Ready Virtual Environment $venv with Python $pVersion
    fi

done

# Install dependencies in all virtual environments
for version in $(cat Versions/python_versions.txt)
do
    if [[ $version == *"conda"* ]]; then
        echo Conda not yet supported
    else
        venv=${version:t}
        pyenv local $venv
        pyenv local
        pip install --upgrade pip
        pip install -r Versions/$venv.txt
    fi
done

rm .python-version
rm .pyenv-version