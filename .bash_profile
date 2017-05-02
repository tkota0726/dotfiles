# .bash_profile

export LSCOLORS=gxfxcxdxbxegedabagacad
#.bashrcがあれば読み込む
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi


##
# Your previous /Users/kota/.bash_profile file was backed up as /Users/kota/.bash_profile.macports-saved_2017-04-22_at_13:42:14
##

# MacPorts Installer addition on 2017-04-22_at_13:42:14: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

