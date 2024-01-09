// 12 to 24

func formatChecker(_ userInput: String) -> Bool {
    let characters = Array(userInput)
    if userInput.count != 7 || characters[2] != ":" {
        return false
    }

    let amPM = String(characters[5...6])

    if amPM != "AM" && amPM != "PM" {
        return false
    }

    let hourString = String(characters[0...1])
    let minuteString = String(characters[3...4])

    if let hour = Int(hourString), let minute = Int(minuteString) {
        return hour >= 0 && hour < 12 && minute >= 0 && minute < 60
    }

    return false
}