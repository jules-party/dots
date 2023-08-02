#
# ~/.zshrc
#
#: Simple .zshrc file

# Source Function File
source ${HOME}/.local/share/zshrc_funcs.zsh

setup_functions=(env_setup alias_setup prompt_setup)

for func in "${setup_functions[@]}"
do
	${func}
	unset -f ${func}
done
unset func
