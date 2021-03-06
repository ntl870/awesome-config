!/bin/bash

shell=$(basename $SHELL)
kernel="$(uname -r | cut -d '-' -f1)"
wmname="$(xprop -id $(xprop -root -notype | awk '$1=="_NET_SUPPORTING_WM_CHECK:"{print $5}') -notype -f _NET_WM_NAME 8t | grep "WM_NAME" | cut -f2 -d \")"


#                __.......__
#             .-:::::::::::::-.
#           .:::''':::::::''':::.
#         .:::'     ':::'     ':::.
#    .'\  ::'        ':'        '::  /'.
#   :   \ ::                     :: /   :
#  :     \':    ___       ___    :'/     :
# :       /\    ( •)\   /( •)    /\       :
# :      / .\    ‾‾  | |  ‾‾    /. \      :
# :      \ (         (_)         ) /      :
#  :      '_(                   )_'      :
#   '.       \    < _____ >    /       .'
#     '.      \     \   /     /      .'
#       '._    '-._       _.-'    _.'
#        .''-.__ .''-._.-''. __.-''.
#      .'       '.         .'       '.
#    .'           '-.   .-'           '.

a=$'[1;34m'        # PURPLE
r=$'[1;31m'        # RED
w=$'[1;39m'        # WHITE
g=$'[1;35m'        # MAGENTA
t=$'[01;49;32m'    # GREEN
m=$'[m'            # NORMAL
tput clear
cat << EOF
  $a               __.......__
              .-:::::::::::::-.
            .:::''':::::::''':::.
          .:::'     ':::'     ':::.$m
     $g.'\  $a::'$m        $a':'$m        $a'::$g  /'.$m
    $g:   \ $a::$m                     $a::$g /   :$m
   $g:     \'$a:$m    ___       ___    $a:$g'/     :
  :$w       /\    ( •)\   /$w( •)$w    /\       $g:
  :$w      / .\    ‾‾  | |  ‾‾    /. \      $g:
  :$w      \ (         (_)         ) /      $g:
   :$w      '_(                   )_'      $g:
    '.$w       \    < _____ >    /       $g.'
      '.$w      \     $r\   /$g     $w/      $g.'
        '._$w    '-._       _.-'   $g _.'
  $t       .''-.__$w .''-._.-''.$t __.-''.
       .'       '.         .'       '.
     .'           '-.   .-'           '. $m


                                       

EOF


fonts : https://github.com/xero/figlet-fonts
figlet : https://github.com/cmatsuoka/figlet
lolcat : https://github.com/busyloop/lolcat
to get urxvt working with 256 colors use
sudo apt-get install rxvt-unicode-256color