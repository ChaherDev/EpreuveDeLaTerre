// Pair ou impair

func oddOrEven() {
    if Int(CommandLine.arguments[1])! % 2 == 0 {
        print("Pair")
    } else {
        print("Impair")
    }
}

if CommandLine.arguments.count != 2 {
    print("Vous devez fournir un argument")
} else if Int(CommandLine.arguments[1]) == nil {
    print("Vous devez fournir un nombre entier")
} else {
    oddOrEven()
}
