if status is-interactive
    # Commands to run in interactive sessions can go here

    cd
    alias nv "nvim"
    alias lsa "ls -AChs --group-directories-first"

    export PATH="$PATH:$HOME/.cargo/bin" # cargo binaries
    export PATH="$PATH:/usr/lib/jvm/java-19-openjdk/bin" # openjdk-19 binaries
    export PATH="$PATH:$HOME/go/bin" # golang binaries
    export PATH="$PATH:/usr/lib/emscripten"
    export PATH="$PATH:$HOME/.local/bin"

    # fish_vi_key_bindings

    # function fish_user_key_bindings
    #    bind \cf forward-word
    #    bind \ef forward-char
    # end

    export EDITOR="nvim"
    neofetch
end

set PREV_COMMANDS_RUN 0
set fish_greeting

# aliases

alias clipboard="xclip -sel clip" 
alias icat="kitty +kitten icat"

export PATH="/usr/local/shortcuts:$PATH"
