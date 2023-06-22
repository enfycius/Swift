var moviesToWatch: Array<String> = Array()

moviesToWatch.append("The Shawshank Redemption")
moviesToWatch.append("Ghostbusters")
moviesToWatch.append("Terminator 2")

print(moviesToWatch[0])
print(moviesToWatch[1])
print(moviesToWatch[2])

print(moviesToWatch.count)

moviesToWatch.insert("The Matrix", at: 2)

print(moviesToWatch.count)
print(moviesToWatch)

let firstMovieToWatch = moviesToWatch.first

print(firstMovieToWatch as Any)

let lastMovieToWatch = moviesToWatch.last

print(lastMovieToWatch as Any)

let secondMovieToWatch = moviesToWatch[1]

print(secondMovieToWatch)       // "Ghostbusters"

moviesToWatch[1] = "Ghostbusters (1984)"

print(moviesToWatch.count)

print(moviesToWatch)

let spyMovieSuggestions: [String] = ["The Bourne Identity", "Casino Royale", "Mission Impossible"]

moviesToWatch = moviesToWatch + spyMovieSuggestions

print(moviesToWatch.count)

print(moviesToWatch)

var starWarsTrilogy = Array<String>(repeating: "Star Wars: ", count: 3)

starWarsTrilogy[0] = starWarsTrilogy[0] + "A New Hope"
starWarsTrilogy[1] = starWarsTrilogy[1] + "Empire Strikes Back"
starWarsTrilogy[2] = starWarsTrilogy[2] + "Return of the Jedi"

print(starWarsTrilogy)

moviesToWatch.replaceSubrange(2...4, with: starWarsTrilogy)

print(moviesToWatch.count)
print(moviesToWatch)

moviesToWatch.remove(at: 6)

print(moviesToWatch.count)
print(moviesToWatch)

let index5 = moviesToWatch.index(moviesToWatch.startIndex, offsetBy: 5, limitedBy: moviesToWatch.endIndex)

print(index5 as Any)

let index10 = moviesToWatch.index(moviesToWatch.startIndex, offsetBy: 10, limitedBy: moviesToWatch.endIndex)

print(index10 as Any)

let fibonacci: [Int] = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]



moviesToWatch.replaceSubrange(2..<5, with: starWarsTrilogy)  // Half-open range


let evenNumbersTo10 = [2, 4, 6, 8, 10]
evenNumbersTo10.append(12) // Don't compile

var evenNumbersTo12 = evenNumbersTo10
evenNumbersTo12.append(12) // Does compile
