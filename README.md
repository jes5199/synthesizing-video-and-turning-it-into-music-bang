# Synthesizing Video &amp; Turning It Into Music!
## on the GPU! in the browser! using WebGL 3D! and the Web Audio API!

I originally gave this talk at <a href="http://bangbangcon.com">!!con</a>, which requires all talk titles to include at least one exclamation point.

Video of that talk is available: https://www.youtube.com/watch?v=nwsg-ZTRRoI
The audio gets wonky because their HDMI system used 48kHz audio sample rate rather than the 44.1kHz that my code expects, oops.

## What do you call this thing

VIDEOSYNTH AURALIZER

## can I see it working

[![blue skies and red trees](https://raw.githubusercontent.com/jes5199/synthesizing-video-and-turning-it-into-music-bang/master/images/red-trees.png)](https://jes5199.github.io/demos/blue%20skies%20and%20red%20trees.html)

The piece of video/music that I try to show off that never seems to work quite right on stage is available here:

["blue skies and red trees"](https://jes5199.github.io/demos/blue%20skies%20and%20red%20trees.html)

I have no idea what browsers it will work in. I use Chrome. Feel free to view the source, but it's a bit of a mess and kind of overengineered- I pushed some of the video-to-audio conversion into GPU code, and added the oscilliscope and FFT visualizations, and I don't remember what else.

[![composition b](https://raw.githubusercontent.com/jes5199/synthesizing-video-and-turning-it-into-music-bang/master/images/composition_b.png)](https://jes5199.github.io/demos/without%20incidental%20complexity.html)

The initial inspiration for the videosynth auralizer came as ["composition b"](https://jes5199.github.io/demos/composition_b.html), which I wrote in a single night's worth of insomnia, October 2016.

[![without incidental complexity](https://raw.githubusercontent.com/jes5199/synthesizing-video-and-turning-it-into-music-bang/master/images/complexity.png)](https://jes5199.github.io/demos/without%20incidental%20complexity.html)

The first piece that made me think I was making something musically interesting was ["without incidental complexity"](https://jes5199.github.io/demos/without%20incidental%20complexity.html)

## code from the talk

1. [A440 in Javascript](https://github.com/jes5199/synthesizing-video-and-turning-it-into-music-bang/blob/master/code/js-a440.html)
2. [A Major triad in Javascript](https://github.com/jes5199/synthesizing-video-and-turning-it-into-music-bang/blob/master/code/js-triad.html)
3. [A440 in WebGL](https://github.com/jes5199/synthesizing-video-and-turning-it-into-music-bang/blob/master/code/webgl-a440.html) Jump directly to: ([javascript audiolizer function](https://github.com/jes5199/synthesizing-video-and-turning-it-into-music-bang/blob/c2ac59db270c14151ed7d050778b393597641e30/code/webgl-a440.html#L78)) ([WebGL waveform](https://github.com/jes5199/synthesizing-video-and-turning-it-into-music-bang/blob/c2ac59db270c14151ed7d050778b393597641e30/code/webgl-a440.html#L136))
4. [the ruby script that converts wav files to images](https://github.com/jes5199/synthesizing-video-and-turning-it-into-music-bang/blob/master/code/wav2imgblob.rb)
5. [auralizing images of my own voice](https://github.com/jes5199/synthesizing-video-and-turning-it-into-music-bang/blob/master/code/vocals.html)

## Sites I consulted when creating these demos, these are all really amazing resources:

* [webglfundamentals.org](http://webglfundamentals.org)
* [thebookofshaders.com](http://thebookofshaders.com)
* www.khronos.org/files/webgl/webgl-reference-card-1_0.pdf
* [shadertoy.com](http://shadertoy.com)
* [developer.mozilla.org](http://developer.mozilla.org) (especially their Web Audio docs)
* [adventurekid.se](http://adventurekid.se)
* [bytenoise.co.uk](http://bytenoise.co.uk)

## other stuff

The algorithmic art I used in a slide is "chaos portal (red/blue)" on shadertoy: https://www.shadertoy.com/view/MtlyDj

A related but different piece titled "chaos pyramid" was on display during the intermission at !!con: https://www.shadertoy.com/view/ldscWN

The Patreon page that I haven't managed to actually use yet is at https://www.patreon.com/jes5199

I put some images I generated onto https://wolfe-interval.tumblr.com/

I ran a version of the auralizer on a family of aliasing patterns that I had been playing with (it's a long story.) and I found the noise surprisingly pleasing and so I posted it to soundcloud as if it was music: https://soundcloud.com/wolfe-interval/chromogeographic-oscillation 
