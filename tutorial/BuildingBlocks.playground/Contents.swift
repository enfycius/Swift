let phrase: String = "The quick brown fox jumps over the lazy dog"
let numberOfFoxes: Int = 1
let numberOfAnimals: Int = 2

let averageCharactersPerWord: Float = (3 + 5 + 5) / 3

print(averageCharactersPerWord)

var phraseInfo = "The phrase" + " has: "

print(phraseInfo)

var anotherPhrase = phrase

phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(numberOfAnimals) animals"

print(phraseInfo)

print("Number of characters in phrase: \(phrase.count)")

let multilineExplanation = """
Why is the following phrase often used?
"The quick brown fox jumps over the lazy dog"
This phrase contains every letter in the alphabet.
"""

let phrasesAreEqual = phrase == anotherPhrase

print(phrasesAreEqual)

let phraseHas43Characters = phrase.count == 40 + 3

print(phraseHas43Characters)
