# -*- coding: utf-8 -*-
#

from i3pystatus import Status

status = Status()

status.register("clock",
    format=" %H:%M:%S ",)

status.register("clock",
    format=" %a %d-%m-%Y ",)

status.register("openvpn",
)

status.register("spotify",
    # format="{title}: {song_elapsed}"
)

status.run()
