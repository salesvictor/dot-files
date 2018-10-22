source ~/.bashrc
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PATH="$HOME/.local/bin:$PATH"
export IDF_PATH=~/esp/esp-idf
export PATH="$PATH:$HOME/dev/IntelliJ/bin"
