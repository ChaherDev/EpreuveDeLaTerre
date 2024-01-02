// Trié ou pas

func areAllArgumentsIntegers() -> Bool {
    for i in 1..<CommandLine.arguments.count {
        if Int(CommandLine.arguments[i]) == nil {
            return false
        }
    }
    return true
}

func sorted() -> Bool {
    for i in 1..<CommandLine.arguments.count-1 {
        if Int(CommandLine.arguments[i])! > Int(CommandLine.arguments[i+1])! {
            return false
        }
    }
    return true
}

if CommandLine.arguments.count < 3 {
    print("Vous devez fournir au moins deux arguments")
} else if !areAllArgumentsIntegers() {
    print("Vous ne devez fournir que des nombres")
} else if !sorted() {
    print("Pas trié !")
} else {
    print("Trié") 
}