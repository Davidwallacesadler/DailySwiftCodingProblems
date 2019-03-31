import Foundation
// Given a list of flight origins and destinations and a starting airport this function will return an itinerary if there is a possible route from the first airport to the last:
func possibleItinerary(_ flights: [(String, String)],_ startAirport: String) -> [String]? {
    // Initialize a mutable version of the flights array so we can remove elements once we have used them in the itinerary:
    var flightList = flights
    // Initialize a currentAirport variable that will reflect the airport we are at in the itinerary:
    var currentAirport = startAirport
    // Initialize an array for storing answer Strings:
    var itinerary: [String] = []
    // Initialize a counting variable to loop through the flightList array:
    var i = 0
    // Loop until i is equal to the number of elements in the flightList array:
    while i < flightList.count {
        // Grab a tuple from the flightlist at index i:
        let pair = flightList[i]
        // Check that the first element in the tuple is the airport we are inspecting for:
        if pair.0 == currentAirport {
            // Check that the tuple contians the element that is the currentAirport:
            if itinerary.contains(pair.0) == false {
                // Append the first element if it is already not in the itinerary:
                itinerary.append(pair.0)
            }
            // Append the second element of the tuple to the itinerary:
            itinerary.append(pair.1)
            // Set the currentAirport for the next loop:
            currentAirport = pair.1
            // Remove the tuple from the flightList so we don't
            flightList.remove(at: i)
            // Reset the counting variable if an element as been appended to the itinerary:
            i = 0
        } else {
            // Increment the counting variable:
            i += 1
        }
    }
    // Check if the itinerary is in fact the full thing, and if so return it, and if not return nil:
    if itinerary.count == flights.count + 1 {
        return itinerary
    } else {
        return nil
    }
}
possibleItinerary([("SFO", "HKO"), ("YYZ", "SFO"), ("YUL", "YYZ"), ("HKO", "ORD")], "YUL")
possibleItinerary([("SFO", "COM"), ("COM", "YYZ")], "COM")
possibleItinerary([("A", "B"), ("A", "C"), ("B", "C"), ("C", "A")], "A")
