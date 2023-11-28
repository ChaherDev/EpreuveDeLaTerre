// Racine carré d'un nombre

func squarreRoot() {
    let number = Int(CommandLine.arguments[1])!
    if number == 0 {
        print(0)
    } else if number == 1 {
        print(1)
    } else {
        for i in 1...number {
            if i * i >= number {
                if i * i == number {
                    print(i)
                    break
                } else {
                    print(i - 1)
                    break
                }
            }
        }
    }
}

if CommandLine.arguments.count != 2 {
    print("Vous devez fournir un argument")
} else if Int(CommandLine.arguments[1]) == nil {
    print("Vous devez fournir un nombre entier")
} else {
    squarreRoot()
}
