import Foundation
/*
 You throw a ball vertically upwards with an initial speed v (in km per hour). The height h of the ball at each time t is given by h = v*t - 0.5*g*t*t where g is Earth's gravity (g ~ 9.81 m/s**2). A device is recording at every tenth of second the height of the ball. For example with v = 15 km/h the device gets something of the following form: (0, 0.0), (1, 0.367...), (2, 0.637...), (3, 0.808...), (4, 0.881..) ... where the first number is the time in tenth of second and the second number the height in meter.
 
 Write a function max_ball with parameter v (in km per hour) that returns the time in tenth of second of the maximum height recorded by the device.
 */
func maxBall(_ v0: Int) -> Int {
    /// This represents the argument velocity in kilometer per hour to meters per second.
    let v = Double(v0) * 1000/3600
    
    /// This represents the time at which the ball will begin to fall downwards i.e the top of the balls trajectory = intial velocity divided by the force of gravity.
    let maxPositionTime = Double(v) / 9.81
    
    /// This represents the maximum position of the ball in meters (4.905 = g/2)
    let maxPosition = (Double(v) * maxPositionTime) - (4.905)*(maxPositionTime)*(maxPositionTime)
    
    /// This rounds the maxPostionTime and multiplies it by 10 so we can return the final answer in tenths of a second.
    let roundedPostionTime = Int((round(10.0 * maxPositionTime) / 10.0) * 10)
    
    print("The ball is thrown at an initial speed of \(v) meters per second, and it reaches a maximum height of \(maxPosition) meters above the ground at time \(maxPositionTime) seconds or \(roundedPostionTime) tenths of a second.")
    
    return roundedPostionTime
}
maxBall(15)
