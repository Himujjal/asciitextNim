import strformat

proc buildStyle1*(inputText: string): string =
  var
    newline = false
    line0 = ""
    line1 = ""
    line2 = ""
    line3 = ""
    space = "    "
    i = 0

  var alphabets: array[26, array[4, string]]
  var numbers: array[10, array[4, string]]

  alphabets[0][0] = "     "
  alphabets[0][1] = " __  "
  alphabets[0][2] = "(__( "
  alphabets[0][3] = "     "

  alphabets[1][0] = "     "
  alphabets[1][1] = "|__  "
  alphabets[1][2] = "|__) "
  alphabets[1][3] = "     "

  alphabets[2][0] = "     "
  alphabets[2][1] = " __  "
  alphabets[2][2] = "(___ "
  alphabets[2][3] = "     "


  alphabets[3][0] = "     "
  alphabets[3][1] = " __| "
  alphabets[3][2] = "(__| "
  alphabets[3][3] = "     "

  alphabets[4][0] = "      "
  alphabets[4][1] = " ___  "
  alphabets[4][2] = "(__/_ "
  alphabets[4][3] = "      "

  alphabets[5][0] = "  _ "
  alphabets[5][1] = "_|_ "
  alphabets[5][2] = " |  "
  alphabets[5][3] = "    "

  alphabets[6][0] = "     "
  alphabets[6][1] = " __  "
  alphabets[6][2] = "(__| "
  alphabets[6][3] = " __/ "

  alphabets[7][0] = "     "
  alphabets[7][1] = "|__  "
  alphabets[7][2] = "|  ) "
  alphabets[7][3] = "     "

  alphabets[8][0] = "  "
  alphabets[8][1] = "o "
  alphabets[8][2] = "| "
  alphabets[8][3] = "  "

  alphabets[9][0] = "     "
  alphabets[9][1] = "   | "
  alphabets[9][2] = "(__, "
  alphabets[9][3] = "     "

  alphabets[10][0] = "|    "
  alphabets[10][1] = "|__/ "
  alphabets[10][2] = "|  \\ "
  alphabets[10][3] = "     "

  alphabets[11][0] = "    "
  alphabets[11][1] = "|   "
  alphabets[11][2] = "|_, "
  alphabets[11][3] = "    "


  alphabets[12][0] = "        "
  alphabets[12][1] = " __ __  "
  alphabets[12][2] = "|  )  ) "
  alphabets[12][3] = "        "

  alphabets[13][0] = "     "
  alphabets[13][1] = " __  "
  alphabets[13][2] = "|  ) "
  alphabets[13][3] = "     "

  alphabets[14][0] = "     "
  alphabets[14][1] = " __  "
  alphabets[14][2] = "(__) "
  alphabets[14][3] = "     "

  alphabets[15][0] = "     "
  alphabets[15][1] = " __  "
  alphabets[15][2] = "|__) "
  alphabets[15][3] = "|    "

  alphabets[16][0] = "     "
  alphabets[16][1] = " __  "
  alphabets[16][2] = "(__| "
  alphabets[16][3] = "   | "

  alphabets[17][0] = "     "
  alphabets[17][1] = " __  "
  alphabets[17][2] = "|  ' "
  alphabets[17][3] = "     "

  alphabets[18][0] = "     "
  alphabets[18][1] = "  __ "
  alphabets[18][2] = "__)  "
  alphabets[18][3] = "     "

  alphabets[19][0] = "     "
  alphabets[19][1] = "_|_  "
  alphabets[19][2] = " |_, "
  alphabets[19][3] = "     "

  alphabets[20][0] = "      "
  alphabets[20][1] = "      "
  alphabets[20][2] = "(__(_ "
  alphabets[20][3] = "      "

  alphabets[21][0] = "     "
  alphabets[21][1] = "     "
  alphabets[21][2] = "(__| "
  alphabets[21][3] = "     "

  alphabets[22][0] = "        "
  alphabets[22][1] = "        "
  alphabets[22][2] = "(__(__( "
  alphabets[22][3] = "        "

  alphabets[23][0] = "    "
  alphabets[23][1] = "\\_' "
  alphabets[23][2] = "/ \\ "
  alphabets[23][3] = "    "

  alphabets[24][0] = "     "
  alphabets[24][1] = "     "
  alphabets[24][2] = "(__| "
  alphabets[24][3] = "   | "

  alphabets[25][0] = "     "
  alphabets[25][1] = "__   "
  alphabets[25][2] = " (__ "
  alphabets[25][3] = "     "

  numbers[0][0] = " __  "
  numbers[0][1] = "|  | "
  numbers[0][2] = "|__| "
  numbers[0][3] = "     "

  numbers[1][0] = "   "
  numbers[1][1] = "/| "
  numbers[1][2] = " | "
  numbers[1][3] = "   "

  numbers[2][0] = " __  "
  numbers[2][1] = " __) "
  numbers[2][2] = "(___ "
  numbers[2][3] = "     "

  numbers[3][0] = "___ "
  numbers[3][1] = " _/ "
  numbers[3][2] = "__) "
  numbers[3][3] = "    ";

  numbers[4][0] = "     "
  numbers[4][1] = "(__| "
  numbers[4][2] = "   | "
  numbers[4][3] = "     "

  numbers[5][0] = " __  "
  numbers[5][1] = "(__  "
  numbers[5][2] = "___) "
  numbers[5][3] = "     "

  numbers[6][0] = "     "
  numbers[6][1] = " /_  "
  numbers[6][2] = "(__) "
  numbers[6][3] = "    "

  numbers[7][0] = "__  "
  numbers[7][1] = "  / "
  numbers[7][2] = " /  "
  numbers[7][3] = "    "

  numbers[8][0] = " __  "
  numbers[8][1] = "(__) "
  numbers[8][2] = "(__) "
  numbers[8][3] = "     "

  numbers[9][0] = " __  "
  numbers[9][1] = "(__) "
  numbers[9][2] = "  /  "
  numbers[9][3] = "     "

  for inputChar in inputText:
    i += 1
    case inputChar:
    of ' ':
      line0 = fmt"{line0}{space}"
      line1 = fmt"{line1}{space}"
      line2 = fmt"{line2}{space}"
    of 'a':
      line0 = fmt"{line0}{alphabets[0][0]}"
      line1 = fmt"{line1}{alphabets[0][1]}"
      line2 = fmt"{line2}{alphabets[0][2]}"
    of 'b':
      line0 = fmt"{line0}{alphabets[1][0]}"
      line1 = fmt"{line1}{alphabets[1][1]}"
      line2 = fmt"{line2}{alphabets[1][2]}"
    of 'c':
      line0 = fmt"{line0}{alphabets[2][0]}"
      line1 = fmt"{line1}{alphabets[2][1]}"
      line2 = fmt"{line2}{alphabets[2][2]}"
    of 'd':
      line0 = fmt"{line0}{alphabets[3][0]}"
      line1 = fmt"{line1}{alphabets[3][1]}"
      line2 = fmt"{line2}{alphabets[3][2]}"
    of 'e':
      line0 = fmt"{line0}{alphabets[4][0]}"
      line1 = fmt"{line1}{alphabets[4][1]}"
      line2 = fmt"{line2}{alphabets[4][2]}"
    of 'f':
      line0 = fmt"{line0}{alphabets[5][0]}"
      line1 = fmt"{line1}{alphabets[5][1]}"
      line2 = fmt"{line2}{alphabets[5][2]}"
    of 'g':
      line0 = fmt"{line0}{alphabets[6][0]}"
      line1 = fmt"{line1}{alphabets[6][1]}"
      line2 = fmt"{line2}{alphabets[6][2]}"
    of 'h':
      line0 = fmt"{line0}{alphabets[7][0]}"
      line1 = fmt"{line1}{alphabets[7][1]}"
      line2 = fmt"{line2}{alphabets[7][2]}"
    of 'i':
      line0 = fmt"{line0}{alphabets[8][0]}"
      line1 = fmt"{line1}{alphabets[8][1]}"
      line2 = fmt"{line2}{alphabets[8][2]}"
    of 'j':
      line0 = fmt"{line0}{alphabets[9][0]}"
      line1 = fmt"{line1}{alphabets[9][1]}"
      line2 = fmt"{line2}{alphabets[9][2]}"
    of 'k':
      line0 = fmt"{line0}{alphabets[10][0]}"
      line1 = fmt"{line1}{alphabets[10][1]}"
      line2 = fmt"{line2}{alphabets[10][2]}"
    of 'l':
      line0 = fmt"{line0}{alphabets[11][0]}"
      line1 = fmt"{line1}{alphabets[11][1]}"
      line2 = fmt"{line2}{alphabets[11][2]}"
    of 'm':
      line0 = fmt"{line0}{alphabets[12][0]}"
      line1 = fmt"{line1}{alphabets[12][1]}"
      line2 = fmt"{line2}{alphabets[12][2]}"
    of 'n':
      line0 = fmt"{line0}{alphabets[13][0]}"
      line1 = fmt"{line1}{alphabets[13][1]}"
      line2 = fmt"{line2}{alphabets[13][2]}"
    of 'o':
      line0 = fmt"{line0}{alphabets[14][0]}"
      line1 = fmt"{line1}{alphabets[14][1]}"
      line2 = fmt"{line2}{alphabets[14][2]}"
    of 'p':
      line0 = fmt"{line0}{alphabets[15][0]}"
      line1 = fmt"{line1}{alphabets[15][1]}"
      line2 = fmt"{line2}{alphabets[15][2]}"
    of 'q':
      line0 = fmt"{line0}{alphabets[16][0]}"
      line1 = fmt"{line1}{alphabets[16][1]}"
      line2 = fmt"{line2}{alphabets[16][2]}"
    of 'r':
      line0 = fmt"{line0}{alphabets[17][0]}"
      line1 = fmt"{line1}{alphabets[17][1]}"
      line2 = fmt"{line2}{alphabets[17][2]}"
    of 's':
      line0 = fmt"{line0}{alphabets[18][0]}"
      line1 = fmt"{line1}{alphabets[18][1]}"
      line2 = fmt"{line2}{alphabets[18][2]}"
    of 't':
      line0 = fmt"{line0}{alphabets[19][0]}"
      line1 = fmt"{line1}{alphabets[19][1]}"
      line2 = fmt"{line2}{alphabets[19][2]}"
    of 'u':
      line0 = fmt"{line0}{alphabets[20][0]}"
      line1 = fmt"{line1}{alphabets[20][1]}"
      line2 = fmt"{line2}{alphabets[20][2]}"
    of 'v':
      line0 = fmt"{line0}{alphabets[21][0]}"
      line1 = fmt"{line1}{alphabets[21][1]}"
      line2 = fmt"{line2}{alphabets[21][2]}"
    of 'w':
      line0 = fmt"{line0}{alphabets[22][0]}"
      line1 = fmt"{line1}{alphabets[22][1]}"
      line2 = fmt"{line2}{alphabets[22][2]}"
    of 'x':
      line0 = fmt"{line0}{alphabets[23][0]}"
      line1 = fmt"{line1}{alphabets[23][1]}"
      line2 = fmt"{line2}{alphabets[23][2]}"
    of 'y':
      line0 = fmt"{line0}{alphabets[24][0]}"
      line1 = fmt"{line1}{alphabets[24][1]}"
      line2 = fmt"{line2}{alphabets[24][2]}"
    of 'z':
      line0 = fmt"{line0}{alphabets[25][0]}"
      line1 = fmt"{line1}{alphabets[25][1]}"
      line2 = fmt"{line2}{alphabets[25][2]}"
    of '0':
      line0 = fmt"{line0}{numbers[0][0]}"
      line1 = fmt"{line1}{numbers[0][1]}"
      line2 = fmt"{line2}{numbers[0][2]}"
    of '1':
      line0 = fmt"{line0}{numbers[1][0]}"
      line1 = fmt"{line1}{numbers[1][1]}"
      line2 = fmt"{line2}{numbers[1][2]}"
    of '2':
      line0 = fmt"{line0}{numbers[2][0]}"
      line1 = fmt"{line1}{numbers[2][1]}"
      line2 = fmt"{line2}{numbers[2][2]}"
    of '3':
      line0 = fmt"{line0}{numbers[3][0]}"
      line1 = fmt"{line1}{numbers[3][1]}"
      line2 = fmt"{line2}{numbers[3][2]}"
    of '4':
      line0 = fmt"{line0}{numbers[4][0]}"
      line1 = fmt"{line1}{numbers[4][1]}"
      line2 = fmt"{line2}{numbers[4][2]}"
    of '5':
      line0 = fmt"{line0}{numbers[5][0]}"
      line1 = fmt"{line1}{numbers[5][1]}"
      line2 = fmt"{line2}{numbers[5][2]}"
    of '6':
      line0 = fmt"{line0}{numbers[6][0]}"
      line1 = fmt"{line1}{numbers[6][1]}"
      line2 = fmt"{line2}{numbers[6][2]}"
    of '7':
      line0 = fmt"{line0}{numbers[7][0]}"
      line1 = fmt"{line1}{numbers[7][1]}"
      line2 = fmt"{line2}{numbers[7][2]}"
    of '8':
      line0 = fmt"{line0}{numbers[8][0]}"
      line1 = fmt"{line1}{numbers[8][1]}"
      line2 = fmt"{line2}{numbers[8][2]}"
    of '9':
      line0 = fmt"{line0}{numbers[9][0]}"
      line1 = fmt"{line1}{numbers[9][1]}"
      line2 = fmt"{line2}{numbers[9][2]}"
    of '\n':
      newline = true
      break
    else:
      discard
  let outputText = fmt"""{line0}
{line1}
{line2}
{line3}"""
  if newline:
    return fmt"{outputText}\n{buildStyle1(inputText.substr(i))}"
  return outputText

proc buildStyle2*(inputText: string): string =
  var newline = false; var line0 = ""; var line1 = ""; var line2 = ""; var line3 = ""; var line4 = ""; var line5 = ""; var space = "     ";
  var a: array[6, string]
  var b:array[6, string]; var c:array[6, string]; var d:array[6, string]; var e:array[6, string]; var f:array[6, string]; var g:array[6, string]; var h:array[6, string]; var I:array[6, string]; var j:array[6, string]; var k:array[6, string]; var l:array[6, string]; var m:array[6, string]; var n:array[6, string]; var o:array[6, string]; var p:array[6, string]; var q:array[6, string]; var r:array[6, string]; var s:array[6, string]; var t:array[6, string]; var u:array[6, string]; var v:array[6, string]; var w:array[6, string]; var x:array[6, string]; var y:array[6, string]; var z:array[6, string]; var zero:array[6, string]; var one:array[6, string]; var two:array[6, string]; var three:array[6, string]; var four:array[6, string]; var five:array[6, string]; var six:array[6, string]; var seven:array[6, string]; var eight:array[6, string]; var nine:array[6, string]
  a[0] = "     ___  "
  a[1] = "    /   | "
  a[2] = "   / /| | "
  a[3] = "  / / | | ";
  a[4] = " / /  | | ";
  a[5] = "/_/   |_| ";
  b[0] = " _____  ";
  b[1] = "|  _  \\ ";
  b[2] = "| |_| | ";
  b[3] = "|  _  { ";
  b[4] = "| |_| | ";
  b[5] = "|_____/ ";
  c[0] = " _____  ";      c[1] = "/  ___| ";      c[2] = "| |     ";      c[3] = "| |     ";      c[4] = "| |___  ";      c[5] = "\\_____| ";
  d[0] = " _____  ";      d[1] = "|  _  \\ ";     d[2] = "| | | | ";      d[3] = "| | | | ";      d[4] = "| |_| | ";      d[5] = "|_____/ ";
  e[0] = " _____  ";      e[1] = "| ____| ";      e[2] = "| |__   ";      e[3] = "|  __|  ";      e[4] = "| |___  ";      e[5] = "|_____| ";
  f[0] = " _____  ";      f[1] = "|  ___| ";      f[2] = "| |__   ";      f[3] = "|  __|  ";      f[4] = "| |     ";      f[5] = "|_|     ";
  g[0] = " _____  ";      g[1] = "/  ___| ";      g[2] = "| |     ";      g[3] = "| |  _  ";      g[4] = "| |_| | ";      g[5] = "\\_____/ ";
  h[0] = " _   _  ";      h[1] = "| | | | ";      h[2] = "| |_| | ";      h[3] = "|  _  | ";      h[4] = "| | | | ";      h[5] = "|_| |_| ";
  I[0] = " _  ";          I[1] = "| | ";          I[2] = "| | ";          I[3] = "| | ";          I[4] = "| | ";          I[5] = "|_| ";
  j[0] = "     _  ";      j[1] = "    | | ";      j[2] = "    | | ";      j[3] = " _  | | ";      j[4] = "| |_| | ";      j[5] = "\\_____/ ";
  k[0] = " _   _   ";     k[1] = "| | / /  ";     k[2] = "| |/ /   ";     k[3] = "| |\\ \\   ";       k[4] = "| | \\ \\  ";       k[5] = "|_|  \\_\\ ";
  l[0] = " _      ";      l[1] = "| |     ";      l[2] = "| |     ";      l[3] = "| |     ";      l[4] = "| |___  ";      l[5] = "|_____| ";
  m[0] = "     ___  ___  ";   m[1] = "    /   |/   | ";   m[2] = "   / /|   /| | ";   m[3] = "  / / |__/ | | ";   m[4] = " / /       | | ";   m[5] = "/_/        |_| ";
  n[0] = " __   _  ";     n[1] = "|  \\ | | ";        n[2] = "|   \\| | ";        n[3] = "| |\\   | ";        n[4] = "| | \\  | ";        n[5] = "|_|  \\_| ";
  o[0] = " _____  ";      o[1] = "/  _  \\ ";     o[2] = "| | | | ";      o[3] = "| | | | ";      o[4] = "| |_| | ";      o[5] = "\\_____/ ";
  p[0] = " _____  ";      p[1] = "|  _  \\ ";     p[2] = "| |_| | ";      p[3] = "|  ___/ ";      p[4] = "| |     ";      p[5] = "|_|     ";
  q[0] = " _____    ";        q[1] = "/  _  \\   ";       q[2] = "| | | |   ";        q[3] = "| | | |   ";        q[4] = "| |_| |_  ";        q[5] = "\\_______| ";
  r[0] = " _____   ";     r[1] = "|  _  \\  ";        r[2] = "| |_| |  ";     r[3] = "|  _  /  ";     r[4] = "| | \\ \\  ";       r[5] = "|_|  \\_\\ ";
  s[0] = " _____  ";      s[1] = "/  ___/ ";      s[2] = "| |___  ";      s[3] = "\\___  \\ ";        s[4] = " ___| | ";      s[5] = "/_____/ ";
  t[0] = " _____  ";      t[1] = "|_   _| ";      t[2] = "  | |   ";      t[3] = "  | |   ";      t[4] = "  | |   ";      t[5] = "  |_|   ";
  u[0] = " _   _  ";      u[1] = "| | | | ";      u[2] = "| | | | ";      u[3] = "| | | | ";      u[4] = "| |_| | ";      u[5] = "\\_____/ ";
  v[0] = " _     _  ";        v[1] = "| |   / / ";        v[2] = "| |  / /  ";        v[3] = "| | / /   ";        v[4] = "| |/ /    ";        v[5] = "|___/     ";
  w[0] = " _          __ ";   w[1] = "| |        / / ";   w[2] = "| |  __   / /  ";   w[3] = "| | /  | / /   ";   w[4] = "| |/   |/ /    ";   w[5] = "|___/|___/     ";
  x[0] = "__    __ ";     x[1] = "\\ \\  / / ";       x[2] = " \\ \\/ /  ";       x[3] = "  }  {   ";     x[4] = " / /\\ \\  ";       x[5] = "/_/  \\_\\ ";
  y[0] = "__    __ ";     y[1] = "\\ \\  / / ";       y[2] = " \\ \\/ /  ";       y[3] = "  \\  /   ";        y[4] = "  / /    ";     y[5] = " /_/     ";
  z[0] = " ______ ";      z[1] = "|___  / ";      z[2] = "   / /  ";      z[3] = "  / /   ";      z[4] = " / /__  ";      z[5] = "/_____| ";
  zero[0] = " _____  ";       zero[1] = "/  _  \\ ";      zero[2] = "| | | | ";       zero[3] = "| |/| | ";       zero[4] = "| |_| | ";       zero[5] = "\\_____/ ";
  one[0] = " ___  ";      one[1] = "|_  | ";      one[2] = "  | | ";      one[3] = "  | | ";      one[4] = "  | | ";      one[5] = "  |_| ";
  two[0] = " _____  ";        two[1] = "/___  \\ ";       two[2] = " ___| | ";        two[3] = "/  ___/ ";        two[4] = "| |___  ";        two[5] = "|_____| ";
  three[0] = " _____  ";      three[1] = "|___  | ";      three[2] = "   _| | ";      three[3] = "  |_  { ";      three[4] = " ___| | ";      three[5] = "|_____/ ";
  four[0] = " _   _  ";       four[1] = "| | | | ";       four[2] = "| |_| | ";       four[3] = "\\___  | ";      four[4] = "    | | ";       four[5] = "    |_| ";
  five[0] = " _____  ";       five[1] = "|  ___| ";       five[2] = "| |___  ";       five[3] = "\\___  \\ ";     five[4] = " ___| | ";       five[5] = "\\_____| ";
  six[0] = " _____  ";        six[1] = "/  ___| ";        six[2] = "| |___  ";        six[3] = "|  _  \\ ";       six[4] = "| |_| | ";        six[5] = "\\_____/ ";
  seven[0] = " _____  ";      seven[1] = "|___  | ";      seven[2] = "    / / ";      seven[3] = "   / /  ";      seven[4] = "  / /   ";      seven[5] = " /_/    ";
  eight[0] = " _____  ";      eight[1] = "/  _  \\ ";     eight[2] = "| |_| | ";      eight[3] = "}  _  { ";      eight[4] = "| |_| | ";      eight[5] = "\\_____/ ";

  var i = 0
  for inputChar in inputText:
    i += 1
    if inputChar == ' ': line0 = fmt"{line0}{space}";     line1 = fmt"{line1}{space}";     line2 = fmt"{line2}{space}";     line3 = fmt"{line3}{space}";     line4 = fmt"{line4}{space}";         line5 = fmt"{line5}{space}"
    if inputChar == 'a': line0 = fmt"{line0}{a[0]}";      line1 = fmt"{line1}{a[1]}";      line2 = fmt"{line2}{a[2]}";      line3 = fmt"{line3}{a[3]}";      line4 = fmt"{line4}{a[4]}";          line5 = fmt"{line5}{a[5]}"
    if inputChar == 'b': line0 = fmt"{line0}{b[0]}";      line1 = fmt"{line1}{b[1]}";      line2 = fmt"{line2}{b[2]}";      line3 = fmt"{line3}{b[3]}";      line4 = fmt"{line4}{b[4]}";          line5 = fmt"{line5}{b[5]}"
    if inputChar == 'c': line0 = fmt"{line0}{c[0]}";      line1 = fmt"{line1}{c[1]}";      line2 = fmt"{line2}{c[2]}";      line3 = fmt"{line3}{c[3]}";      line4 = fmt"{line4}{c[4]}";          line5 = fmt"{line5}{c[5]}"
    if inputChar == 'd': line0 = fmt"{line0}{d[0]}";      line1 = fmt"{line1}{d[1]}";      line2 = fmt"{line2}{d[2]}";      line3 = fmt"{line3}{d[3]}";      line4 = fmt"{line4}{d[4]}";          line5 = fmt"{line5}{d[5]}"
    if inputChar == 'e': line0 = fmt"{line0}{e[0]}";      line1 = fmt"{line1}{e[1]}";      line2 = fmt"{line2}{e[2]}";      line3 = fmt"{line3}{e[3]}";      line4 = fmt"{line4}{e[4]}";          line5 = fmt"{line5}{e[5]}"
    if inputChar == 'f': line0 = fmt"{line0}{f[0]}";      line1 = fmt"{line1}{f[1]}";      line2 = fmt"{line2}{f[2]}";      line3 = fmt"{line3}{f[3]}";      line4 = fmt"{line4}{f[4]}";          line5 = fmt"{line5}{f[5]}"
    if inputChar == 'g': line0 = fmt"{line0}{g[0]}";      line1 = fmt"{line1}{g[1]}";      line2 = fmt"{line2}{g[2]}";      line3 = fmt"{line3}{g[3]}";      line4 = fmt"{line4}{g[4]}";          line5 = fmt"{line5}{g[5]}"
    if inputChar == 'h': line0 = fmt"{line0}{h[0]}";      line1 = fmt"{line1}{h[1]}";      line2 = fmt"{line2}{h[2]}";      line3 = fmt"{line3}{h[3]}";      line4 = fmt"{line4}{h[4]}";          line5 = fmt"{line5}{h[5]}"
    if inputChar == 'i': line0 = fmt"{line0}{I[0]}";      line1 = fmt"{line1}{I[1]}";      line2 = fmt"{line2}{I[2]}";      line3 = fmt"{line3}{I[3]}";      line4 = fmt"{line4}{I[4]}";          line5 = fmt"{line5}{I[5]}"
    if inputChar == 'j': line0 = fmt"{line0}{j[0]}";      line1 = fmt"{line1}{j[1]}";      line2 = fmt"{line2}{j[2]}";      line3 = fmt"{line3}{j[3]}";      line4 = fmt"{line4}{j[4]}";          line5 = fmt"{line5}{j[5]}"
    if inputChar == 'k': line0 = fmt"{line0}{k[0]}";      line1 = fmt"{line1}{k[1]}";      line2 = fmt"{line2}{k[2]}";      line3 = fmt"{line3}{k[3]}";      line4 = fmt"{line4}{k[4]}";          line5 = fmt"{line5}{k[5]}"
    if inputChar == 'l': line0 = fmt"{line0}{l[0]}";      line1 = fmt"{line1}{l[1]}";      line2 = fmt"{line2}{l[2]}";      line3 = fmt"{line3}{l[3]}";      line4 = fmt"{line4}{l[4]}";          line5 = fmt"{line5}{l[5]}"
    if inputChar == 'm': line0 = fmt"{line0}{m[0]}";      line1 = fmt"{line1}{m[1]}";      line2 = fmt"{line2}{m[2]}";      line3 = fmt"{line3}{m[3]}";      line4 = fmt"{line4}{m[4]}";          line5 = fmt"{line5}{m[5]}"
    if inputChar == 'n': line0 = fmt"{line0}{n[0]}";      line1 = fmt"{line1}{n[1]}";      line2 = fmt"{line2}{n[2]}";      line3 = fmt"{line3}{n[3]}";      line4 = fmt"{line4}{n[4]}";          line5 = fmt"{line5}{n[5]}"
    if inputChar == 'o': line0 = fmt"{line0}{o[0]}";      line1 = fmt"{line1}{o[1]}";      line2 = fmt"{line2}{o[2]}";      line3 = fmt"{line3}{o[3]}";      line4 = fmt"{line4}{o[4]}";          line5 = fmt"{line5}{o[5]}"
    if inputChar == 'p': line0 = fmt"{line0}{p[0]}";      line1 = fmt"{line1}{p[1]}";      line2 = fmt"{line2}{p[2]}";      line3 = fmt"{line3}{p[3]}";      line4 = fmt"{line4}{p[4]}";          line5 = fmt"{line5}{p[5]}"
    if inputChar == 'q': line0 = fmt"{line0}{q[0]}";      line1 = fmt"{line1}{q[1]}";      line2 = fmt"{line2}{q[2]}";      line3 = fmt"{line3}{q[3]}";      line4 = fmt"{line4}{q[4]}";          line5 = fmt"{line5}{q[5]}"
    if inputChar == 'r': line0 = fmt"{line0}{r[0]}";      line1 = fmt"{line1}{r[1]}";      line2 = fmt"{line2}{r[2]}";      line3 = fmt"{line3}{r[3]}";      line4 = fmt"{line4}{r[4]}";          line5 = fmt"{line5}{r[5]}"
    if inputChar == 's': line0 = fmt"{line0}{s[0]}";      line1 = fmt"{line1}{s[1]}";      line2 = fmt"{line2}{s[2]}";      line3 = fmt"{line3}{s[3]}";      line4 = fmt"{line4}{s[4]}";          line5 = fmt"{line5}{s[5]}"
    if inputChar == 't': line0 = fmt"{line0}{t[0]}";      line1 = fmt"{line1}{t[1]}";      line2 = fmt"{line2}{t[2]}";      line3 = fmt"{line3}{t[3]}";      line4 = fmt"{line4}{t[4]}";          line5 = fmt"{line5}{t[5]}"
    if inputChar == 'u': line0 = fmt"{line0}{u[0]}";      line1 = fmt"{line1}{u[1]}";      line2 = fmt"{line2}{u[2]}";      line3 = fmt"{line3}{u[3]}";      line4 = fmt"{line4}{u[4]}";          line5 = fmt"{line5}{u[5]}"
    if inputChar == 'v': line0 = fmt"{line0}{v[0]}";      line1 = fmt"{line1}{v[1]}";      line2 = fmt"{line2}{v[2]}";      line3 = fmt"{line3}{v[3]}";      line4 = fmt"{line4}{v[4]}";          line5 = fmt"{line5}{v[5]}"
    if inputChar == 'w': line0 = fmt"{line0}{w[0]}";      line1 = fmt"{line1}{w[1]}";      line2 = fmt"{line2}{w[2]}";      line3 = fmt"{line3}{w[3]}";      line4 = fmt"{line4}{w[4]}";          line5 = fmt"{line5}{w[5]}"
    if inputChar == 'x': line0 = fmt"{line0}{x[0]}";      line1 = fmt"{line1}{x[1]}";      line2 = fmt"{line2}{x[2]}";      line3 = fmt"{line3}{x[3]}";      line4 = fmt"{line4}{x[4]}";          line5 = fmt"{line5}{x[5]}"
    if inputChar == 'y': line0 = fmt"{line0}{y[0]}";      line1 = fmt"{line1}{y[1]}";      line2 = fmt"{line2}{y[2]}";      line3 = fmt"{line3}{y[3]}";      line4 = fmt"{line4}{y[4]}";          line5 = fmt"{line5}{y[5]}"
    if inputChar == 'z': line0 = fmt"{line0}{z[0]}";      line1 = fmt"{line1}{z[1]}";      line2 = fmt"{line2}{z[2]}";      line3 = fmt"{line3}{z[3]}";      line4 = fmt"{line4}{z[4]}";          line5 = fmt"{line5}{z[5]}"
    if inputChar == '0': line0 = fmt"{line0}{zero[0]}";   line1 = fmt"{line1}{zero[1]}";   line2 = fmt"{line2}{zero[2]}";   line3 = fmt"{line3}{zero[3]}";   line4 = fmt"{line4}{zero[4]}";       line5 = fmt"{line5}{zero[5]}"
    if inputChar == '1': line0 = fmt"{line0}{one[0]}";    line1 = fmt"{line1}{one[1]}";    line2 = fmt"{line2}{one[2]}";    line3 = fmt"{line3}{one[3]}";    line4 = fmt"{line4}{one[4]}";        line5 = fmt"{line5}{one[5]}"
    if inputChar == '2': line0 = fmt"{line0}{two[0]}";    line1 = fmt"{line1}{two[1]}";    line2 = fmt"{line2}{two[2]}";    line3 = fmt"{line3}{two[3]}";    line4 = fmt"{line4}{two[4]}";        line5 = fmt"{line5}{two[5]}"
    if inputChar == '3': line0 = fmt"{line0}{three[0]}";  line1 = fmt"{line1}{three[1]}";  line2 = fmt"{line2}{three[2]}";  line3 = fmt"{line3}{three[3]}";  line4 = fmt"{line4}{three[4]}";      line5 = fmt"{line5}{three[5]}"
    if inputChar == '4': line0 = fmt"{line0}{four[0]}";   line1 = fmt"{line1}{four[1]}";   line2 = fmt"{line2}{four[2]}";   line3 = fmt"{line3}{four[3]}";   line4 = fmt"{line4}{four[4]}";       line5 = fmt"{line5}{four[5]}"
    if inputChar == '5': line0 = fmt"{line0}{five[0]}";   line1 = fmt"{line1}{five[1]}";   line2 = fmt"{line2}{five[2]}";   line3 = fmt"{line3}{five[3]}";   line4 = fmt"{line4}{five[4]}";       line5 = fmt"{line5}{five[5]}"
    if inputChar == '6': line0 = fmt"{line0}{six[0]}";    line1 = fmt"{line1}{six[1]}";    line2 = fmt"{line2}{six[2]}";    line3 = fmt"{line3}{six[3]}";    line4 = fmt"{line4}{six[4]}";        line5 = fmt"{line5}{six[5]}"
    if inputChar == '7': line0 = fmt"{line0}{seven[0]}";  line1 = fmt"{line1}{seven[1]}";  line2 = fmt"{line2}{seven[2]}";  line3 = fmt"{line3}{seven[3]}";  line4 = fmt"{line4}{seven[4]}";      line5 = fmt"{line5}{seven[5]}"
    if inputChar == '8': line0 = fmt"{line0}{eight[0]}";  line1 = fmt"{line1}{eight[1]}";  line2 = fmt"{line2}{eight[2]}";  line3 = fmt"{line3}{eight[3]}";  line4 = fmt"{line4}{eight[4]}";      line5 = fmt"{line5}{eight[5]}"
    if inputChar == '9': line0 = fmt"{line0}{nine[0]}";   line1 = fmt"{line1}{nine[1]}";   line2 = fmt"{line2}{nine[2]}";   line3 = fmt"{line3}{nine[3]}";   line4 = fmt"{line4}{nine[4]}";       line5 = fmt"{line5}{nine[5]}"
    if inputChar == '\n': newline = true; break

  var outputText = &"{line0}\n{line1}\n{line2}\n{line3}\n{line4}\n{line5}"
  if newline == true:
    return &"{outputText}\n{buildStyle2(inputText.substr(i + 2))}"
  else:
    return outputText;

