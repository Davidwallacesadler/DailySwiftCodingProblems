import Foundation

/*
 You’re a hospital that logs patients, every time a patient comes in you log a timestamp. The timestamp is a number representing the number of seconds that have passed since 1900, you have to figure out a way to determine based on the timestamp if the patient was admitted before 6:00 PM or after 6:00 PM on the day they were admitted.
 */

func didAdmitAfterSixPM(timeStamp: Double) -> Bool {
    
    let secondsInAYear: Double = 31536000.0
    let initDate = 1900
    let secToYear = Int(floor(Double(timeStamp / secondsInAYear)))
    let yearOfAdmission = initDate + secToYear
    
    let secToDayDividend = timeStamp / secondsInAYear
    let secToDayRemainder = secToDayDividend.truncatingRemainder(dividingBy: 1)
    let secToDay = secToDayRemainder * 365
    let dayOfYear = Int(secToDay)

    
    let secToHours = secToDay.truncatingRemainder(dividingBy: 1.0) * 24
    print("The patient was admitted in \(yearOfAdmission), on day \(dayOfYear) of the year, and \(secToHours) into that day.")
    
    if secToHours < 18 {
        print("The patient was admitted before 6PM on the day of admission")
        return false
        
    } else {
        print("The patient was admiitted on or after 6PM on the day of admission")
        return true
    }
}
didAdmitAfterSixPM(timeStamp: 66600)


//MARK: - Example Values
// 3147065276 -- Year: 1999, Days into year: 289, Hours into day: ~8, => false
// 2561151213 -- Year: 1981, Days into year: 77, Hours into day: ~22 => true
// 3264711111 -- Year: 2003, Days into year: 191, Hours into day: ~0.2 => false
// 4315822000 -- Year: 2036, Days into year: 311, Hours into day: ~15 => false
// 66600 -- Year: 1900, Days into year: 0, Hours into day: 18.5 => true -- BASE CASE (WE KNOW WHAT THIS SHOULD BE)
