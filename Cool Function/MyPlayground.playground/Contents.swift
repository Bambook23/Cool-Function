import Foundation

func makeItCool(_ string: String) -> String {
  var coolString = ""

  for char in string {
    switch char.lowercased() {
    case "a":
      coolString.append("@")
    case "i":
      coolString.append("1")
    case "s":
      coolString.append("$")
    case "o":
      coolString.append("0")
    case "t":
      coolString.append("+")
    default:
      coolString.append(char)
    }
  }

  return coolString
}

func printStrings(uncoolString: String, coolString: String) {
  print("Uncool string:", uncoolString)
  print("Cool string:", coolString, "\n")
}

var plainString = "Swift is awesome"
printStrings(uncoolString: plainString,
             coolString: makeItCool(plainString))

plainString = "Cat"
printStrings(uncoolString: plainString,
             coolString: makeItCool(plainString))

plainString = "today"
printStrings(uncoolString: plainString,
             coolString: makeItCool(plainString))

