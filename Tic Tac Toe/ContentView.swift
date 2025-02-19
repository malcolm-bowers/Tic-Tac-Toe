//
//  ContentView.swift
//  Tic Tac Toe
//
//  Created by Malcolm Bowers on 2/14/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var gameState = GameState()
    
    var body: some View {
        let borderSize = CGFloat(5)
        
        VStack(spacing: borderSize) {
            ForEach(0...2, id: \.self) {
                row in
                HStack(spacing: borderSize) {
                    ForEach(0...2, id: \.self) {
                        column in
                        
                        let cell = gameState.board[row][column]
                        
                        Text(cell.displayTile())
                            .font(.system(size: 60))
                            .foregroundColor(cell.tileColor())
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .aspectRatio(1, contentMode: .fit)
                            .background(Color.white)
                            .onTapGesture {
                                gameState.placeTile(row, column)
                            }
                    }
                }
            }
        }
        .background(Color.black)
        .padding()
    }
}

#Preview {
    ContentView()
}
