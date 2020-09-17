import strutils
import strformat

import buildStyle

type TextStyle = enum textStyle1, textStyle2, textStyle3

type InvalidCharacterError = ref object of CatchableError

proc asciiText*(input: string, textStyle: TextStyle = textStyle1): string  {.raises: [InvalidCharacterError, ValueError] .} =
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
    return buildStyle2(inputText)
  #  return case textStyle:
  #   of textStyle1: buildStyle1(inputText)
  # of textStyle2: buildStyle2(inputText)
  # of textStyle3: buildStyle3(inputText)

when isMainModule:
  echo asciiText("23h 23m 0s", textStyle2)
