var dayOfTheWeek: String = "Monday"

dayOfTheWeek = "Tuesday"
dayOfTheWeek = "Wednesday"

// dayOfTheWeek = nil       Compile Error !

var numberOfFingersHeldUpByFinn: Int?

numberOfFingersHeldUpByFinn = nil

numberOfFingersHeldUpByFinn = 3

numberOfFingersHeldUpByFinn = nil

numberOfFingersHeldUpByFinn = 1

print(numberOfFingersHeldUpByFinn)


// let lastNumberOfFingersHeldUpByFinn: Int = numberOfFingersHeldUpByFinn       Compile Error
let lastNumberOfFingersHeldUpByFinn: Int = numberOfFingersHeldUpByFinn!
// The error is occured in the above code when numberOfFingersHeldUpByFinn = nil


// numberOfFingersHeldUpByFinn = "three"        Compile Error !

print(numberOfFingersHeldUpByFinn ?? "Unknown")     // nil coalescing operator

var legalName: String!

legalName = nil

legalName = "Alissa Jones"

print(legalName)

var input: Int! = 5

print(input)

var output1 = input

print(output1 as Any)

var output2 = input + 1

print(output2)

