# ScaleMaker

A simple scale and tab writing software written in Haskell. This is an W.I.P, currently only simple scale generation has been made.

### Running

```
You'll need ghci or some other Haskell interpreter to run this.

ghci Scale.hs

GHCi, version 8.6.3: http://www.haskell.org/ghc/  :? for help
[1 of 2] Compiling ListOfScales     ( ListOfScales.hs, interpreted )
[2 of 2] Compiling Scale            ( Scale.hs, interpreted )
Ok, two modules loaded.
*Scale> 

To generate a scale all you need to do is run:
*Scale> scale' "C" major
["C","D","E","F","G","A","B","C"]

*Scale> scale' "F#" locrian 
["F#","G","A","B","C","D","E","F#"]

```

### List Of Scales Included
 Scale  | Steps |
| ------------- | ------------- |
| Major | W, W, H, W, W, W, H  |
| Minor  | W, H, W, W, H, W, W|
| Harmonic Minor | W, H, W, W, H, W+H, H|
| Dorian |W, H, W, W, W, H, W|
| Phrygian | H, W, W, W, H, W, W|
| Lydian | W, W, W, H, W, W, H|
| Mixolydian | W, W, H, W, W, W, H , W|
| Locrian |H, W, W, H, W, W, W, W|

## Authors

* **Jake Learman** - (https://github.com/jakelearman)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
