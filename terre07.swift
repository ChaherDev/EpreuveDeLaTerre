// Taille du'une chaine

func size() {
    let array = Array(CommandLine.arguments[1])
    print(array.count)
}

if CommandLine.arguments.count != 2 {
    print("Vous devez fournir un argument")
} else if Int(CommandLine.arguments[1]) != nil {
    print("Vous ne devez pas fournir de nombre")
} else {
    size()
}