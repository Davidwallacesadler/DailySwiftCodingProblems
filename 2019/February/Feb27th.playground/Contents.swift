import UIKit

func f() {
    print("f has been called")
}

// Functions have a type determined by the type of input parameters and the type of the return value: f is of type () -> void.

func callFAfterNMilliseconds(_functionF:@escaping () -> Void, n: Int)  {
    
    // This stored property represents the conversion from the given n that is in milliseconds and we must represent it in seconds:
    let milliSecondsToSeconds = Double( n / 1000 )
    
    // This stored property represents the number of seconds passed when this is run:
    let timeToFire = NSDate.init(timeIntervalSinceNow: milliSecondsToSeconds)
    

    let timer = Timer(fire: timeToFire as Date, interval: 0.0, repeats: false) { _ in
        _functionF()
    }
    
    return timer.fire()
}

callFAfterNMilliseconds(_functionF: f, n: 20000)
