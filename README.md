# Synthesizing Video &amp; Turning It Into Music!
## on the GPU! in the browser! using WebGL 3D! and the Web Audio API!

I originally gave this talk at <a href="http://bangbangcon.com">!!con</a>, which requires all talk titles to include at least one exclamation point.

Video of that talk is available: https://www.youtube.com/watch?v=nwsg-ZTRRoI

[![blue skies and red trees](https://raw.githubusercontent.com/jes5199/synthesizing-video-and-turning-it-into-music-bang/master/images/red-trees.png)](https://jes5199.github.io/demos/blue%20skies%20and%20red%20trees.html)

The piece of video/music that I try to show off that never seems to work quite right on stage is available here: ["blue skies and red trees"](https://jes5199.github.io/demos/blue%20skies%20and%20red%20trees.html)

I have no idea what browsers it will work in. I use Chrome. Feel free to view the source, but it's a bit of a mess and kind of overengineered- I pushed some of the video-to-audio conversion into GPU code, and added the oscilliscope and FFT visualizations, and I don't remember what else.

## code from the talk

1. [A440 in Javascript](https://github.com/jes5199/synthesizing-video-and-turning-it-into-music-bang/blob/master/code/js-a440.html)
2. [A Major triad in Javascript](https://github.com/jes5199/synthesizing-video-and-turning-it-into-music-bang/blob/master/code/js-triad.html)
3. ...

## Sites I consulted when creating this demo, these are all really amazing resources:

* [webglfundamentals.org](http://webglfundamentals.org)
* [thebookofshaders.com](http://thebookofshaders.com)
* www.khronos.org/files/webgl/webgl-reference-card-1_0.pdf
* [shadertoy.com](http://shadertoy.com)
* [developer.mozilla.org](http://developer.mozilla.org) (especially https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API )
* [adventurekid.se](http://adventurekid.se)
* [bytenoise.co.uk](http://bytenoise.co.uk)


The algorithmic art I used in a slide is "chaos portal (red/blue)" on shadertoy: https://www.shadertoy.com/view/MtlyDj
A related but different piece titled "chaos pyramid" was on display during the intermission at !!con: https://www.shadertoy.com/view/ldscWN
