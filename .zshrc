
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U promptinit
promptinit
prompt fade yellow

source ~/.zsh/antigen/antigen.zsh

antigen use oh-my-zsh
antigen theme bhilburn/powerlevel9k powerlevel9k

antigen bundle archlinux
antigen bundle pip
antigen bundle celery
antigen bundle python
antigen bundle vi-mode

export PATH=$PATH:~/bin:~/.gem/ruby/2.2.0/bin:/opt/android/sdk/platform-tools
export P4CONFIG=~/.perforce
export JAVA_HOME=/usr/lib/jvm/java-default-runtime

export PYPL_CPU_BENCHMARKS_PATH=~/dev/benchmarking
export PYPL_OGL_TRACES_PATH=~/OpenGLTraces
export NDK_PATH=/opt/android/ndk/

alias ndk-build='/opt/android/ndk/ndk-build'
export EDITOR=vim
export TERM=xterm-256color
#bindkey -v
