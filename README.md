xscreensaverblank.pl

The xscreensaverblank.pl perl script will watch when xscreensaver sends BLANK 
and send signal -STOP to processes making battery drainage minimal when in 
xscreensaver mode. After unblank or logon this script will send -CONT to the 
processes making them continue where they were left off.

Script copied from xscreensavers FAQ:
https://www.jwz.org/xscreensaver/faq.html#watch
