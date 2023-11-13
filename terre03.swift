// L’alphabet à partir de

let alphabetLetters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

func isTheArgumentALowerCaseLetter() -> Bool {
    for letter in alphabetLetters {
        if CommandLine.arguments[1] == letter {
            return true
        }    
    }
    return false
}

func printAlphabetFrom() {
    for index in alphabetLetters.firstIndex(of: CommandLine.arguments[1])!..<alphabetLetters.count {
        print(alphabetLetters[index], terminator: "")
    }
    print()
}

if CommandLine.arguments.count != 2 {
    print("Vous devez fournir un seul argument")
} else if !isTheArgumentALowerCaseLetter() {
    print("Vous devez fournir une lettre minuscule de l'alphabet")
} else {
    printAlphabetFrom()
}