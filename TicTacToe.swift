var field = [
  ["_", "_", "_"],
  ["_", "_", "_"],
  [" ", " ", " "]
]

printField()

var player = "x"


while !didPlayerWin() {
nextRound(player)
  
changePlayer()
}


func changePlayer() {
  if player == "o" {
    player = "x"
  } else {
    player = "o"
  }
}


func nextRound(_ player: String) {
  zgjedhePoziten(player)
  printField()
}


func zgjedhePoziten(_ player: String) {
  print("write two numbers (0 - 2) player:\(player)")
  let x = Int(readLine()!)!
  let y = Int(readLine()!)!


 if field[x][y] != "x" && field[x][y] != "o" {
    field[x][y] = player
  } else {
    print("Pozita eshte e zene")
    changePlayer()
  }
}


func printField() {
  print("\(field[0][0])|\(field[0][1])|\(field[0][2])")
  print("\(field[1][0])|\(field[1][1])|\(field[1][2])")
  print("\(field[2][0])|\(field[2][1])|\(field[2][2])")
}


func didPlayerWin() -> Bool {
  if(field[0][0] == field[0][1] && field[0][0] == field[0][2] && field[0][0] != "_" && field[0][0] != " ") {
    print("Urime ju keni fituar lojen!")
    
    return true
  } else if(field[1][0] == field[1][1] && field[1][0] == field[1][2] && field[1][0] != "_" && field[1][0] != " ") {
    print("Urime ju keni fituar lojen!")
    return true
  } else if(field[2][0] == field[2][1] && field[2][0] == field[2][2] && field[2][0] != "_" && field[2][0] != " ") {
    print("Urime ju keni fituar lojen!")
    return true
  }
  else if(field[0][0] == field[1][0] && field[0][0] == field[2][0] && field[0][0] != "_" && field[0][0] != " "){
    print("Urime ju keni fituar lojen!")
    return true
  }
  else if(field[0][1] == field[1][1] && field[0][0] == field[2][1] && field[0][1] != "_" && field[0][1] != " ") {
     print("Urime ju keni fituar lojen!")
    return true
  }
  else if(field[0][2] == field[1][2] && field[0][2] == field[2][2] && field[0][2] != "_" && field[0][2] != " ") {
     print("Urime ju keni fituar lojen!")
    return true
  }//diagonale
else if(field[0][0] == field[1][1] && field[0][0] == field[2][2] && field[0][0] != "_" && field[0][0] != " ") {
     print("Urime ju keni fituar lojen!")
    return true
  } else if(field[0][2] == field[1][1] && field[0][2] == field[2][0] && field[0][2] != "_" && field[0][2] != " ") {
     print("Urime ju keni fituar lojen!")
    return true
  }
  else {
    return false
  }
}