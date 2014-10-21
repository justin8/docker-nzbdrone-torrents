#!/bin/bash

# Urgh. Workarounds for broken upstream archlinux image.
expect << EOF
	set send_slow {1 .1}
	proc send {ignore arg} {
		sleep .1
		exp_send -s -- \$arg
	}
	set timeout 60

	spawn pacman -Syq --noprogressbar lzo
	expect {
		-exact "lzo2" { send -- "y\r"; exp_continue }
		-exact "Enter a number" { send -- "\r"; exp_continue }
		-exact "Proceed with installation" { send -- "\r"; exp_continue }
	}
EOF
