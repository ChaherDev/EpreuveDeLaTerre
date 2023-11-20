// Puissance d'un nombre

func pow() {
    let number = Double(CommandLine.arguments[1])!
    let power = Int(CommandLine.arguments[2])!
    var result: Double = number
    for _ in 1..<power {
        result *= result
    }
    if Double(Int(result)) == result {
        print(Int(result))
    } else {
        print(result)
    }
}

if CommandLine.arguments.count != 3 {
    print("Vous devez fournir deux arguments")
} else if Double(CommandLine.arguments[1]) == nil || Int(CommandLine.arguments[2]) == nil {
    print("Le premier argument doit être un nombre et le second un nombre entier")
} else if Int(CommandLine.arguments[2])! < 0 {
    print("Le second argument doit être un nombre entier positif")
} else if Double(CommandLine.arguments[1]) == 0.0 && Int(CommandLine.arguments[2])! == 0 {
    print("La valeur de 0 exposant 0 n'est pas définie de manière unique dans les mathématiques. ")
} else if Int(CommandLine.arguments[2])! == 0 {
    print(1)
} else if Double(CommandLine.arguments[1])! == 0.0 {
    print(0)
} else {
    pow()
}