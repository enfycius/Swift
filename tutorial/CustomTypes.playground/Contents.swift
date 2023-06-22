enum GridPosition: String {
    case player1 = "o"
    case player2 = "x"
    case empty = " "
}

struct TicTacToe {
    var gridStorage: [[GridPosition]] = []
    
    subscript(atRow row: Int, atColumn column: Int) -> GridPosition {
        get {
            return gridStorage[row][column]
        }
        
        set(newValue) {
            gridStorage[row][column] = newValue
        }
    }
    
    init() {
        gridStorage.append(Array(repeating: .empty, count: 3))
        gridStorage.append(Array(repeating: .empty, count: 3))
        gridStorage.append(Array(repeating: .empty, count: 3))
    }
    
    func gameStateString() -> String {
        var stateString = "---------------\n"
        stateString += printableString(forRow: gridStorage[0])
        stateString += "---------------\n"
        stateString += printableString(forRow: gridStorage[1])
        stateString += "---------------\n"
        stateString += printableString(forRow: gridStorage[2])
        stateString += "---------------\n"
        
        return stateString
    }
    
    func printableString(forRow row: [GridPosition]) -> String {
        var rowString = "| \(row[0].rawValue) "
        rowString += "| \(row[1].rawValue) "
        rowString += "| \(row[2].rawValue) |\n"
        
        return rowString
    }
}

var game = TicTacToe()

game.gridStorage[1][1] = .player1

print(game.gameStateString())

game.gridStorage[0][2] = .player2

print(game.gameStateString())

game[atRow: 1, atColumn: 1] = .player1
print(game.gameStateString())

game[atRow: 0, atColumn: 2] = .player2
print(game.gameStateString())

game[atRow: 0, atColumn: 0] = .player1
print(game.gameStateString())

game[atRow: 1, atColumn: 2] = .player2
print(game.gameStateString())

game[atRow: 2, atColumn: 2] = .player1
print(game.gameStateString())

let topLeft = game[atRow: 0, atColumn: 0]
let middle = game[atRow: 1, atColumn: 1]
let bottomRight = game[atRow: 2, atColumn: 2]
let p1HasWon = (topLeft == .player1) && (middle == .player1) && (bottomRight == .player1)

