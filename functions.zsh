function source_file() {
    FILE_VAR=$HOME/.config/zsh/$1
    [ -f $FILE_VAR ] && source $FILE_VAR
}

function zsh_add_plugin() {
    PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
    if [ -d "$HOME/.config/zsh/plugins/$PLUGIN_NAME" ]; then
        source_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" || \
        source_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
    else
        git clone "https://github.com/$1.git" "$HOME/.config/zsh/plugins/$PLUGIN_NAME"
    fi
}