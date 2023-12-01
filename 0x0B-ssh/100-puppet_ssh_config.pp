#!/usr/bin/env bash
# using puppet to make changes to our config file

file { 'ect/ssh/ssh_config':
	ensure => present,
content =>"

	#SSH client
	host*
	IdentityFile ~/.ssh/school
	passwordAuthentication no
}
