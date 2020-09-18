import strutils, sequtils, tables
# strutils --> strip, splitLines, alignLeft
# sequtils --> mapIt
# tables   --> Table[char, seq[string]]


func preprocessor(s: string, height = 6.Positive, width = 10.Positive): Table[char, seq[string]] =
  const alphabet = "0123456789 abcdefghijklmnopqrstuvwxyz" # All chars it can do
  let seqsOfString = mapIt(s.strip(chars = {'\n'}).splitLines, it.alignLeft(width)) # strip, split by lines, pad lines to width
  var i = 0 # for loop lines, in steps of 6, assigning to Table {'a': [" "," "," ",...]}
  for x in countup(0, seqsOfString.len - (height - 1), step = height): # Loop in jumps of height
    result[alphabet[i]] = seqsOfString[x ..< x + height] # {char: seq[string]}
    inc i # increment to go to next letter of alphabet.


# Order is important on the multiline string, must be similar to "alphabet" constant.
const textStyle1* = preprocessor"""
 _____
/  _  \
| | | |
| |/| |
| |_| |
\_____/
 ___
|_  |
  | |
  | |
  | |
  |_|
 _____
/___  \
 ___| |
/  ___/
| |___
|_____|
 _____
|___  |
   _| |
  |_  {
 ___| |
|_____/
 _   _
| | | |
| |_| |
\___  |
    | |
    |_|
 _____
|  ___|
| |___
\___  \
 ___| |
\_____|
 _____
/  ___|
| |___
|  _  \
| |_| |
\_____/
 _____
|___  |
    / /
   / /
  / /
 /_/
 _____
/  _  \
| |_| |
}  _  {
| |_| |
\_____/
 _____
/  _  \
| |_| |
\___  |
____| |
\_____/






     ___
    /   |
   / /| |
  / / | |
 / /  | |
/_/   |_|
 _____
|  _  \
| |_| |
|  _  {
| |_| |
|_____/
 _____
/  ___|
| |
| |
| |___
\_____|
 _____
|  _  \
| | | |
| | | |
| |_| |
|_____/
 _____
| ____|
| |__
|  __|
| |___
|_____|
 _____
|  ___|
| |__
|  __|
| |
|_|
 _____
/  ___|
| |
| |  _
| |_| |
\_____/
 _   _
| | | |
| |_| |
|  _  |
| | | |
|_| |_|
 _
| |
| |
| |
| |
|_|
     _
    | |
    | |
 _  | |
| |_| |
\_____/
 _   _
| | / /
| |/ /
| |\ \
| | \ \
|_|  \_\
 _
| |
| |
| |
| |___
|_____|
     ___  ___
    /   |/   |
   / /|   /| |
  / / |__/ | |
 / /       | |
/_/        |_|
 __   _
|  \ | |
|   \| |
| |\   |
| | \  |
|_|  \_|
 _____
/  _  \
| | | |
| | | |
| |_| |
\_____/
 _____
|  _  \
| |_| |
|  ___/
| |
|_|
 _____
/  _  \
| | | |
| | | |
| |_| |_
\_______|
 _____
|  _  \
| |_| |
|  _  /
| | \ \
|_|  \_\
 _____
/  ___/
| |___
\___  \
 ___| |
/_____/
 _____
|_   _|
  | |
  | |
  | |
  |_|
 _   _
| | | |
| | | |
| | | |
| |_| |
\_____/
 _     _
| |   / /
| |  / /
| | / /
| |/ /
|___/
 _          __
| |        / /
| |  __   / /
| | /  | / /
| |/   |/ /
|___/|___/
__    __
\ \  / /
 \ \/ /
  }  {
 / /\ \
/_/  \_\
__    __
\ \  / /
 \ \/ /
  \  /
  / /
 /_/
 ______
|___  /
   / /
  / /
 / /__
/_____|
"""


#const textStyleX* = preprocessor"""
# ...
#""" Add more textStyle here...
