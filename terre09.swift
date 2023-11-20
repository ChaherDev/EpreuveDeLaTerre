// Racine carré d'un nombre

func sqrt() {

}

if CommandLine.arguments.count != 2 {
    print("Vous devez fournir un seul argument")
} else if Int(CommandLine.arguments[1]) == nil {
    print("Vous devez fournir un nombre entier")
} else {
    sqrt()
}