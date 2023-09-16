struct Planet {
    let name: String
    let positionFromSun: Int
    let fractionOfEarthMass: Double
    let distanceFromSunInAUs: Double
    let hasRings: Bool
}

func makePlanet(fromInput input: [String: Any]) -> Planet? {
    guard
        let name = input["name"] as? String,
        let positionFromSun = input["positionFromSun"] as? Int,
        let fractionOfEarthMass = input["fractionOfEarthMass"] as? Double,
        let distanceFromSunInAUs = input["distanceFromSunInAUs"] as? Double,
        let hasRings = input["hasRings"] as? Bool
    else {
        return nil
    }
    
    return Planet(name: name,
                  positionFromSun: positionFromSun,
                  fractionOfEarthMass: fractionOfEarthMass,
                  distanceFromSunInAUs: distanceFromSunInAUs,
                  hasRings: hasRings)
}

func makePlanets(fromInput input: [[String: Any]]) -> [Planet] {
    var planets: [Planet] = []
    
    for inputItem in input {
        guard let planet = makePlanet(fromInput: inputItem) else {
            continue
        }
        
        planets.append(planet)
    }
    
    return planets
}

var input = [["name": "Jonghyeok",
              "positionFromSun": 10,
              "fractionOfEarthMass": 1.1,
              "distanceFromSunInAUs": 2.1,
              "hasRings": false],
             ["name": "Jonghyeok2",
                           "positionFromSun": 15,
                           "fractionOfEarthMass": 1.3,
                           "distanceFromSunInAUs": 2.1,
                           "hasRings": false],
             ["name": "Jonghyeok3",
                           "positionFromSun": 12,
                           "fractionOfEarthMass": 1.9,
                           "distanceFromSunInAUs": 2.1,
                           "hasRings": false]]

let planets: [Planet] = makePlanets(fromInput: input)

for planet in planets {
    print(planet.name)
    print(planet.positionFromSun)
    print(planet.fractionOfEarthMass)
    print(planet.distanceFromSunInAUs)
    print(planet.hasRings)
}

let animal: [String] = ["Pig", "Cow", "Monkey", "Tiger", "Lion"]

var i: Int = 0

while i < animal.count {
    print(animal[i])
    
    i += 1
}




