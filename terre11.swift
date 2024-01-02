// 24 to 12

func formatChecker() -> Bool {
    
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
