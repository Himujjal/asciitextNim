import strutils
import strformat

import asciitext/buildStyle

type TextStyle =
  enum textStyle1, textStyle2,
  # textStyle3

type InvalidCharacterError = ref object of CatchableError

proc asciiText*(input: string, textStyle: TextStyle = textStyle2): string  {.raises: [InvalidCharacterError, ValueError] .} =
  var validChars = true
  var invalidChar: char

  let inputText = input.toLowerAscii()

  for i in 0..<inputText.len:
    if not (inputText[i].isAlphaNumeric() or inputText[i].isSpaceAscii()):
      validChars = false
      invalidChar = inputText[i]

  if validChars == false:
    raise InvalidCharacterError(msg: fmt"Fatal Error: Character '{invalidChar}' invalid. Only characters a-z,0-9 and newlines (\n) accepted")
  else:
      case textStyle:
      of textStyle1: return buildStyle1(inputText)
      of textStyle2: return buildStyle2(inputText)
    # of textStyle3: return buildStyle3(inputText)

when isMainModule:
  echo asciiText("23h 23m 0s", textStyle2)
