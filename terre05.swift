// Divisions

func division() {
    let result = Int(CommandLine.arguments[1])! / Int(CommandLine.arguments[2])!
    let remainder = Int(CommandLine.arguments[1])! % Int(CommandLine.arguments[2])!
    print("résultat: \(result)")
    print("reste: \(remainder)")
}

if CommandLine.arguments.count != 3 {
    print("Vous devez fournir deux arguments")
} else if Int(CommandLine.arguments[1]) == nil || Int(CommandLine.arguments[2]) == nil {
    print("Vous devez fournir deux nombres entiers")
} else if CommandLine.arguments[2] == "0" {
    print("On ne peut pas diviser par zéro")
} else if Int(CommandLine.arguments[2])! > Int(CommandLine.arguments[1])! {
    print("Le second nombre doit être supérieur au premier")
} else {
    division()
}