# DeaDBeeF Song Rating Plug-in
This is an enhanced fork of the plug-in [deadbeef-rating](https://github.com/splushii/deadbeef-rating) by splushii. The source code was completely refactored and new features were added.

With this plug-in it is possible to rate the music files in DeaDBeeF regardless of the music or tag format. The commands are accessible from the context menu or by binding them to hotkeys. The changed playlists are saved on exit of DeaDBeeF, to save them immediately, you have to remove the comment markers of the line `deadbeef->pl_save_all();`.

Big thanks to [Alexey Yakovenko](https://github.com/Alexey-Yakovenko) for the [DeaDBeeF](http://deadbeef.sourceforge.net/) music player.

# Building & Installing
1. Clone this repository.
2. Download `deadbeef.h`, for example from the [DeaDBeeF source code](http://deadbeef.sourceforge.net/download.html) and copy it to the cloned deadbeef-rating folder.
3. Run `build.sh` from a terminal.
4. Copy the the file `rating.so` to `~/.local/lib/deadbeef` and restart DeaDBeeF.

# Using
In order to show the rating tags in the playlist, add a new custom column with the following format:

`$ifequal([%rating%], 5, *****,)$ifequal([%rating%], 4, ****,)$ifequal([%rating%], 3, ***,)$ifequal([%rating%], 2, **,)$ifequal([%rating%], 1, *,)`

If you want, you can replace `*` with your rating indicator of choice. For example with beautiful awesome stars:

`$ifequal([%rating%], 5,★★★★★,)$ifequal([%rating%], 4,★★★★,)$ifequal([%rating%], 3,★★★,)$ifequal([%rating%], 2,★★,)$ifequal([%rating%], 1,★,)`

Or combine them with empty stars:

`$ifequal([%rating%], 5,★★★★★,)$ifequal([%rating%], 4,★★★★☆,)$ifequal([%rating%], 3,★★★☆☆,)$ifequal([%rating%], 2,★★☆☆☆,)$ifequal([%rating%], 1,★☆☆☆☆,)$ifequal([%rating%], 0,☆☆☆☆☆,)`
