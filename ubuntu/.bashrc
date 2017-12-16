# DO NOT MODIFY THIS FILE! Your changes will be overwritten!
# For user-customization, please edit ~/.bashrc.user
#
# $ROOT$
#
# CSD-CF miles 2003-01-24

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#if [ "x$SHLVL" != "x1" ]; then # We're not a login shell
	for i in /afs/cs/etc/profile.d/*.sh; do
		if [ -r "$i" ]; then
			. $i
		fi
	done
#fi


# Source user modifications
if [ -f ${HOME}/.bashrc.user ]; then
	. ${HOME}/.bashrc.user
fi
