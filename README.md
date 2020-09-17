# ASCIITEXT - Large ASCII Text in Nim

## Prints ASCII values as large fonts.

Use it in CLI or Web or as a string

## Installation

```sh
nimble install asciitext
```

## API

Use the function

```nim
import asciiText

echo asciiText("23h 23m 0s")

#[
Prints:
 _____   _____   _   _        _____   _____       ___  ___        _____   _____
/___  \ |___  | | | | |      /___  \ |___  |     /   |/   |      /  _  \ /  ___/
 ___| |    _| | | |_| |       ___| |    _| |    / /|   /| |      | | | | | |___
/  ___/   |_  { |  _  |      /  ___/   |_  {   / / |__/ | |      | |/| | \___  \
| |___   ___| | | | | |      | |___   ___| |  / /       | |      | |_| |  ___| |
|_____| |_____/ |_| |_|      |_____| |_____/ /_/        |_|      \_____/ /_____/
]#
```

## Change Styles

Use the enum `textStyle` to change style:

Currently there are only two styles present. `textStyle1` which gives you a string with small Ascii letters. `textStyle2` which gives you a string with large Ascii letters as shown above
