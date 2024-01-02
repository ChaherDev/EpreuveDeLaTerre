// Trouver la Suisse (lol)

func areTheArgumentsIntegers() -> Bool {
    for i in 1...3 {
        if Int(CommandLine.arguments[i]) == nil {
            return false
        }
    } 
    return true
}

func findSwitzerland() {
    let firstNumber = Int(CommandLine.arguments[1])!
    let secoundNumber = Int(CommandLine.arguments[2])!
    let thirdNumber = Int(CommandLine.arguments[3])!

    if firstNumber == secoundNumber || firstNumber == thirdNumber || secoundNumber == thirdNumber {
        print("Les trois nombres doivent être différents")
    } else {
        if (firstNumber < secoundNumber && secoundNumber < thirdNumber) || (thirdNumber < secoundNumber && secoundNumber < firstNumber) {
            print(secoundNumber)
        } else if (secoundNumber < thirdNumber && thirdNumber < firstNumber) || (firstNumber < thirdNumber && thirdNumber < secoundNumber) {
            print(thirdNumber)
        } else {
            print(firstNumber)
        }
    }
}

if CommandLine.arguments.count != 4 {
    print("Vous devez fournir trois arguments")
} else if !areTheArgumentsIntegers() {
    print("Vos arguments doivent être des nombres entiers")
} else {
    findSwitzerland()
}