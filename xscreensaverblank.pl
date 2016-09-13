#!/usr/local/bin/perl

my $blanked = 0;
open (IN, "xscreensaver-command -watch |");
while (<IN>) {
    if (m/^(BLANK|LOCK)/) {
        if (!$blanked) {
			system "/bin/pkill -STOP '(chrome|firefox|thunderbird|python2.7|owncloud|redshift|wrapper-1.0|gvfs-hal-volume-mon|gvfsd-trash|xfdesktop|mono)'";
            #system "/usr/sbin/mixer vol 0";
            $blanked = 1;
        }
    } elsif (m/^UNBLANK/) {
        #system "sound-on";
		system "/bin/pkill -CONT '(chrome|firefox|thunderbird|python2.7|owncloud|redshift|wrapper-1.0|gvfs-hal-volume-mon|gvfsd-trash|xfdesktop|mono)'";
        $blanked = 0;
    }
}

