//
//  GameView.swift
//  WordleClone
//
//  Created by Tim Bryant on 6/14/24.
//

import SwiftUI

struct GameView: View {
    @EnvironmentObject var dm: WordleDataModel
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                VStack(spacing: 3) {
                    GuessView(guess: $dm.guesses[0])
                    GuessView(guess: $dm.guesses[1])
                    GuessView(guess: $dm.guesses[2])
                    GuessView(guess: $dm.guesses[3])
                    GuessView(guess: $dm.guesses[4])
                    GuessView(guess: $dm.guesses[5])
                }
                .frame(width: Global.boardWidth, height: 6 * Global.boardWidth / 5)
                
                Spacer()
                
                Keyboard()
                    .scaleEffect(Global.keyboardScale)
                    .padding(.top)
                
                Spacer()
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        
                    } label: {
                        Image(systemName: "questionmark.circle")
                    }
                }
                
                ToolbarItem(placement: .principal) {
                    Text("WORDLE")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        Button {
                            
                        } label: {
                            Image(systemName: "chart.bar")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "gearshape.fill")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    GameView()
        .environmentObject(WordleDataModel())
}
