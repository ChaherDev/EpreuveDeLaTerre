// 24 to 12

func formatChecker(_ userInput: String) -> Bool {

    let characters = Array(userInput)
    if userInput.count != 5 || characters[2] != ":" {
        return false
    } 

    let digits = "123456789"
    for i in [0, 1, 3, 4] {
        if !digits.contains(characters[i]) {
            return false
        }
    }

    let hourString = String(characters[0...1])
    let minuteString = String(characters[3...4])

    if let hour = Int(hourString), let minute = Int(minuteString) {
        return hour >= 0 && hour < 24 && minute >= 0 && minute < 60
    } else {
        return false
    }
}

func hoursConvertor(_ time: String) {
    let hourString = String(time.prefix(2))
    let minuteString = String(time.suffix(2))

    let hour = Int(hourString)!
    let minute = Int(minuteString)!
    var convertedHour = hour % 12
    convertedHour = convertedHour == 0 ? 12 : convertedHour
    let suffix = hour >= 12 ? "PM" : "AM"

    print("\(convertedHour):\(minute < 10 ? "0" : "")\(minute)\(suffix)")
}

if CommandLine.arguments.count != 2 {
    print("Vous devez fournir un seul argument")
} else if !formatChecker(CommandLine.arguments[1]) {
    print("Votre argument doit être une heure valide sous la forme : 13:45")
} else {
    hoursConvertor(CommandLine.arguments[1])
}
