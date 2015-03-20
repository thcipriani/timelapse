# Install ufraw to convert NEFs to jpgs
SRC = $(wildcard Raw/NEFs/*.NEF)
TAR = $(SRC:.NEF=.jpg)

.PHONY: all

all: $(TAR)

Raw/NEFs/%.jpg: Raw/NEFs/%.NEF
	convert $< -resize "1280x" -unsharp 2x0.5+0.7+0 -quality 98 -sigmoidal-contrast 3,50% $@

timelapse.mp4:
	ffmpeg -i 'Raw/NEFs/%*.jpg' -vcodec libx264 -pix_fmt yuv420p -r 60 -q:v 2 timelapse.mp4
