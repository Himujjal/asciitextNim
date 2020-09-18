import tables, asciitext/buildStyle


func asciiText*(input: string, textStyle = textStyle1, height = 6.Positive): string =
  for row in 0 ..< height:  # height is total lines per char, equals to seq lenght.
    for letter in 0 ..< input.len: result.add textStyle[input[letter]][row]
    result.add "\n" # row loops vertical, letter loops horizontal


when isMainModule:
  for number in "0123456789": echo asciiText($number)
  for letter in "abcdefghijklmnopqrstuvwxyz": echo asciiText($letter)
  echo asciiText("123abc")
  echo asciiText("23h 23m 0s")
