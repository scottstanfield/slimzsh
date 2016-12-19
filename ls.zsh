export BLOCK_SIZE="'1"

# setopt extended_glob		 # treat #, ~ and ^ as patterns for filename generation

# Detect which 'ls' flavor to use
if ls --version > /dev/null 2>&1; then # OS X version of ls
    lsflag="-GF"
else # GNU version of ls
    lsflag="--color --group-directories-first -F"
fi

alias ls="command ls ${lsflag}"
alias ll="ls -l ${lsflag}"
alias la="ls -a ${lsflag}"
export LS_COLORS="no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.sh=01;32:*.csh=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm=01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:*.db=35:*.tmp=36:"

# Automatically ls after you change directories (cd).
# Comment out this function if it's annoying.
function chpwd() {
	emulate -L zsh
	ls
}
