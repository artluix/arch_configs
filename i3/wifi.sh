#!/bin/bash
t=$(systemctl is-active netctl@wifi)
if [ "${t}" = "active" ]
then
	sudo netctl stop wifi
else
	sudo netctl start wifi
fi
