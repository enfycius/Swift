import Foundation

//func normalizedStarRating(forRating rating: Float, ofPossibleTotal total: Float) -> (Int, String) {
//
//    let fraction = rating / total
//    let ratingOutOf5 = fraction * 5
//    let roundedRating = round(ratingOutOf5)     // Rounds to the nearest integer.
//    let numberOfStars = Int(roundedRating)      // Turns a Float into an Int
//    let ratingString = "\(numberOfStars) Star Movie"
//
//    return (numberOfStars, ratingString)
//}

//let ratingAndDisplayString = normalizedStarRating(forRating: 5, ofPossibleTotal: 10)
//
//let ratingNumber = ratingAndDisplayString.0
//
//print(ratingNumber) // 3 - Use to show the right number of stars
//
//let ratingString = ratingAndDisplayString.1
//
//print(ratingString)     // "3 Star Movie" - Use to put in the label

// Another option of retrieving the components of a tuple

//let (nextNumber, nextString) = normalizedStarRating(forRating: 8, ofPossibleTotal: 10)
//
//print(nextNumber)       // 4
//print(nextString)       // "4 Star Movie"



// Modified Version

func normalizedStarRating(forRating rating: Float, ofPossibleTotal total: Float) -> (starRating: Int, displayString: String) {
    
    let fraction = rating / total
    let ratingOutOf5 = fraction * 5
    let roundedRating = round(ratingOutOf5)     // Rounds to the nearest integer.
    let numberOfStars = Int(roundedRating)      // Turns a Float into an Int
    let ratingString = "\(numberOfStars) Star Movie"
    
    return (starRating: numberOfStars, displayString: ratingString)
}

let ratingAndDisplayString = normalizedStarRating(forRating: 5, ofPossibleTotal: 10)

let ratingInt = ratingAndDisplayString.starRating

print(ratingInt)        // 3 - Use to show the right number of stars

let ratingString = ratingAndDisplayString.displayString

print(ratingString)     // "3 Stars" - Use to put in the label



