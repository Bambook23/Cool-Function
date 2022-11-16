import Foundation

//MARK: Version with switch

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

plainString = "XaAxiIxSsxoOxtTX"
printStrings(uncoolString: plainString,
             coolString: makeItCool(plainString))


//MARK: Version with dictionary

func makeItCoolWithDict(_ string: String) -> String {
  let dict: [Character: String] = ["a": "@", "i": "1", "s": "$", "o": "0", "t": "+"]
  var coolString = ""

  for char in string {
    if let symbol = dict[Character(char.lowercased())] {
      coolString.append(symbol)
    } else {
      coolString.append(char)
    }
  }

  return coolString
}

print(String(repeating: "-", count: 10))

plainString = "Swift is awesome"
printStrings(uncoolString: plainString,
             coolString: makeItCoolWithDict(plainString))

plainString = "Cat"
printStrings(uncoolString: plainString,
             coolString: makeItCoolWithDict(plainString))

plainString = "today"
printStrings(uncoolString: plainString,
             coolString: makeItCoolWithDict(plainString))

plainString = "XaAxiIxSsxoOxtTX1"
printStrings(uncoolString: plainString,
             coolString: makeItCoolWithDict(plainString))

