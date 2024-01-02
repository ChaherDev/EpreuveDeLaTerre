// 24 to 12

func formatChecker() -> Bool {
    let userInput = Array(CommandLine.arguments[1])
    if userInput.count != 5 {
        return false
    } else if userInput[2] != ":" {
        return false
    } else if userInput[0] != "0" && userInput[0] != "1" && userInput[0] != "2" {
        return false
    } else if userInput[1] !=

}

func hoursConvertor() {

}

if CommandLine.arguments != 2 {
    print("Vous devez fournir un seul argument")
} else if !formatChecker {
    print("Votre argument doit être de la forme : 13:45")
} else {
    hoursConvertor()
}
