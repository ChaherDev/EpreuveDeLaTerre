// Nombre premier

// Un nombre premier est un nombre entier positif
// Donc on peut éliminer des cas

func primeNumber() -> Bool {
    if let argument = Int(CommandLine.arguments[1]) {
        for i in 2..<argument {
            if argument % i == 0 {
                return false
            }
        }
    }
    return true
}

if CommandLine.arguments.count != 2 {
    print("Vous devez fournir un seul argument")
} else if let argument = Int(CommandLine.arguments[1]) {
    if argument < 0 {
        print("Vous devez fournir un entier positif")
    } else if argument == 0 || argument == 1 {
        print("Non, \(argument) n'est pas un nombre premier")
    } else if argument == 2 || primeNumber() {
        print("Oui, \(argument) est un nombre premier")
    } else {
        print("Non, \(argument) n'est pas un nombre premier")
    }
} else {
    print("Vous devez fournir un nombre entier")
}
