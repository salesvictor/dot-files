# Defined in - @ line 1
function config --description 'alias config=git --git-dir=$HOME/dev/dotfiles.git/ --work-tree=$HOME'
	git --git-dir=$HOME/dev/dotfiles.git/ --work-tree=$HOME $argv;
end
