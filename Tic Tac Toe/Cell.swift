//
//  Cell.swift
//  Tic Tac Toe
//
//  Created by Malcolm Bowers on 2/14/25.
//

import Foundation
import SwiftUI

struct Cell {
    var tile: Tile
    
    func displayTile() -> String {
        switch tile {
        case .Cross:
            return "X"
        case .Nought:
            return "O"
        case .Empty:
            return " "
        }
    }
    
    func tileColor() -> Color {
        switch tile {
        case .Cross:
            return Color.black
        case .Nought:
            return Color.red
        case .Empty:
            return Color.black
        }
    }
}

enum Tile {
    case Cross
    case Nought
    case Empty
}

