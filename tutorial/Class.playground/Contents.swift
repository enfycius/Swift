class Person {
    let givenName: String
    let middleName: String
    let familyName: String
    
    var countryOfResidence: String = "UK"
    
    var displayString: String {
        return "\(self.fullName()) - Location: \(self.countryOfResidence)"
    }
    
    init(givenName: String, middleName: String, familyName: String) {
        self.givenName = givenName
        self.middleName = middleName
        self.familyName = familyName
    }
    
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
}

final class Friend: Person {
    var whereWeMet: String?
    
    override var displayString: String {        // Could override super's property,,,
        let meetingPlace = whereWeMet ?? "Don't know where we met"
        
        return "\(super.displayString) - \(meetingPlace)"
    }
}


final class Family: Person {
    let relationship: String

    init(givenName: String, middleName: String, familyName: String = "Moon", relationship: String) {
        self.relationship = relationship

        super.init(givenName: givenName, middleName: middleName, familyName: familyName)
    }
    
    override var displayString: String {
        return "\(super.displayString) - \(relationship)"
    }
}

let steve = Person(givenName: "Steven", middleName: "Paul", familyName: "Jobs")

// let steve = Person.init(givenName: "Steven", middleName: "Paul", familyName: "Jobs")         it is allowed,,,

let richard = Friend(givenName: "Richard", middleName: "Adrian", familyName: "Das")

richard.whereWeMet = "Worked together at Travel Supermarket"

let finnley = Family(givenName: "Finnley", middleName: "David", relationship: "Son")
let dave = Family(givenName: "Dave", middleName: "deRidder", familyName: "Jones", relationship: "Father-In-Law")

dave.countryOfResidence = "US"

print(steve.displayString)
print(richard.displayString)
print(finnley.displayString)
print(dave.displayString)


class MovieReview {     // Reference Types
    let movieTitle: String
    
    var starRating: Int
    
    init(movieTitle: String, starRating: Int) {
        self.movieTitle = movieTitle
        self.starRating = starRating
    }
}

let shawshankReviewOnYourWebsite = MovieReview(movieTitle: "Shawshank Redemption", starRating: 3)

let referenceToReviewOnTwitter = shawshankReviewOnYourWebsite

let referenceToReviewOnFacebook = shawshankReviewOnYourWebsite

print(referenceToReviewOnTwitter.starRating)
print(referenceToReviewOnFacebook.starRating)

shawshankReviewOnYourWebsite.starRating = 5

print(referenceToReviewOnTwitter.starRating)
print(referenceToReviewOnFacebook.starRating)
