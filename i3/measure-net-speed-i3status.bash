#!/bin/bash
# Public Domain
# (someone claimed the next lines would be useful for… people. So here goes:
#  © 2012 Stefan Breunig
#  stefan+measure-net-speed@mathphys.fsk.uni-heidelberg.de)

# append i3status output to the measure-net-speed’s one. the quote and escape
# magic is required to get valid JSON output, which is expected by i3bar (if
# you want colors, that is. Otherwise plain text would be fine). For colors,
# your i3status.conf should contain:
# general {
#   output_format = i3bar
# }

# i3 config looks like this:
# bar {
#   status_command measure-net-speed-i3status.bash
# }

i3status -c ~/.i3/i3status.conf | (read line && echo $line && while :
do
  read line
  lang=$(xkb-switch)
  dat=$(sh ~/.i3/measure-net-speed.bash)
  dat="{ \"full_text\": \"${dat}\" },"
  lang="[{ \"full_text\": \"${lang}\" },"
  output=${lang^^}$dat  
  echo "${line/[/$output}" || exit 1
done)