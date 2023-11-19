// Inverser une chaîne

func reverse() {
    let myArray = Array(CommandLine.arguments[1])
    for letter in stride(from: myArray.count-1, through: 0, by: -1) {
        print(myArray[letter], terminator: "")
    }
    print()
}

if CommandLine.arguments.count != 2 {
    print("Vous devez fournir un argument")
} else {
    reverse()
}