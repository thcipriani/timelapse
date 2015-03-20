# Timelapsification

This repo contains all the files I used to make this timelapse:
<iframe src="https://player.vimeo.com/video/122706069" width="500" height="331" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen>
</iframe>
<p><a href="https://vimeo.com/122706069">Longmont Snowfall Timelapse</a>

This repo includes the mp4, RAW NEFs, jpgs, and a Makefile for hooking it
all together.

This is possible through the magic of [git-annex](http://git-annex.branchable.com/install/).

# Getting RAW

...and whatever other files, if you have git annex installed. A caution
**Running the command below downloads tons of shit**:

    git clone https://github.com/thcipriani/timelapse.git && cd timelapse
    git annex init muh-copy
    git annex get .

If you only want one file, say the original timelapse.mp4:

    git clone https://github.com/thcipriani/timelapse.git && cd timelapse
    git annex init muh-copy
    git annex get timelapse.mp4

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">
  <img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" />
</a><br />
The photographs and assets in this repo are licensed under a
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

Underlying code is all licensed under [GPL-2.0](http://www.gnu.org/licenses/gpl-2.0.txt)
