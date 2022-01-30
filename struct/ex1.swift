struct Car {
    var make: String
    var model: String
    var year: Int
    var topSpeed: Int
    
    func startEngine() {
        print("The \(year) \(make) \(model)'s engine has started.")
    }
    
    func drive() {
        print("The \(year) \(make) \(model) is moving.")
    }
    
    func park() {
        print("The \(year) \(make) \(model) is parked.")
    }
}

let firstCar = Car(make: "Honda", model: "Civic", year: 2010, topSpeed: 120)
let secondCar = Car(make: "Ford", model: "Fusion", year: 2013, topSpeed: 125)

firstCar.startEngine()
firstCar.drive()