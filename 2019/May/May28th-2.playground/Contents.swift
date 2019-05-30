import Foundation

func getCorrectTimeToday(desiredHourMinute: (Int, Int)) -> Date {
    let calendar = Calendar.current
    var components = calendar.dateComponents([.year, .month, .day, .hour, .minute], from: Date())
    let correctHour = desiredHourMinute.0
    let correctMinute = desiredHourMinute.1
    components.hour = correctHour
    components.minute = correctMinute
    guard let todayAtTheCorrectTime = calendar.date(from: components) else {
        print("getCorrectTimeToday: Error instantiating date from components - returning Date()")
        return Date()
    }
    return todayAtTheCorrectTime
}

let noon = (12,0)
let sixThirtyAM = (6,30)
let sixFortyFivePM = (18,45)

getCorrectTimeToday(desiredHourMinute: (12,0))
getCorrectTimeToday(desiredHourMinute: (6,30))
getCorrectTimeToday(desiredHourMinute: (18,45))



