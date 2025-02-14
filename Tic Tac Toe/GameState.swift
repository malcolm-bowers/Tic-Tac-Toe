//
//  GameState.swift
//  Tic Tac Toe
//
//  Created by Malcolm Bowers on 2/14/25.
//

import Foundation

class GameState: ObservableObject {
    @Published var board = [[Cell]]()
    @Published var turn = Tile.Cross
    @Published var naughtScore = 0
    @Published var crossScore = 0
    @Published var
    
    init() {
        resetBoard()
    }
    
    func placeTile(_ row:Int,_ column: Int) {
        if(board[row][column].tile != Tile.Empty) {
            return
        }
        board[row][column].tile = turn == .Cross ? .Cross : .Nought
        
        if(checkForVictory()) {
            if (turn == .Cross) {
                crossScore += 1
            } else {
                naughtScore += 1
            }
        } else {
            turn = turn == .Cross ? .Nought : .Cross
        }
    }
    
    func checkForVictory() -> Bool {
        return false
    }
    
    func resetBoard() {
        var newBoard = [[Cell]]()
        
        for _ in 0...2 {
            var row: [Cell] = []
            
            for _ in 0...2 {
                row.append(Cell(tile: Tile.Empty))
            }
            newBoard.append(row)
        }
        board = newBoard
    }
}
