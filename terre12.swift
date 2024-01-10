// 12 to 24

func formatChecker(_ userInput: String) -> Bool {
    let characters = Array(userInput)
    if characters.count != 7 || characters[2] != ":" {
        return false
    }

    let amPM = String(characters[5...6])

    if amPM != "AM" && amPM != "PM" {
        return false
    }

    let digits = "0123456789"
    for i in [0, 1, 3, 4] {
        if !digits.contains(characters[i]) {
            return false
        }
    }

    let hourString = String(characters[0...1])
    let minuteString = String(characters[3...4])

    if let hour = Int(hourString), let minute = Int(minuteString) {
        return hour > 0 && hour <= 12 && minute >= 0 && minute < 60
    }

    return false
}

func hoursConvertor(_ time: String) {
    let hourString = String(time.prefix(2))

    let characters = Array(time)

    let minuteString = String(characters[3...4])

    let hour = Int(hourString)!

    let amPm = String(characters[5...6])

    if hourString == "12" {
        if amPm == "AM" {
            print("00:\(minuteString)")
        } else {
            print("12:\(minuteString)")
        }
    } else if amPm == "AM" {
        print("\(hourString):\(minuteString)")
    } else {
        print("\(hour + 12):\(minuteString)")
    }
}

if CommandLine.arguments.count != 2 {
    print("Vous devez fournir un seul argument")
} else if !formatChecker(CommandLine.arguments[1]) {
    print("Votre argument doit être une heure valide sous la forme : 11:40PM")
} else {
    hoursConvertor(CommandLine.arguments[1])
}