//
//  ContentView.swift
//  DiceeSwiftUI
//
//  Created by Isaac Urbina on 12/9/24.
//

import SwiftUI

struct ContentView: View {
	@State var leftDiceNumber = 1
	@State var rightDiceNumber = 1
	
    var body: some View {
        ZStack {
			Image("background")
				.resizable()
				.edgesIgnoringSafeArea(.all)
			VStack {
				Image("diceeLogo")
				Spacer()
				HStack {
					DiceView(n: leftDiceNumber)
					DiceView(n: rightDiceNumber)
				}
				.padding(.horizontal)
				Spacer()
				Button(action: {
					self.leftDiceNumber = Int.random(in: 1...6)
					self.rightDiceNumber = Int.random(in: 1...6)
				}) {
					Text("Roll")
						.font(.system(size: 50))
						.fontWeight(.heavy)
						.foregroundColor(.white)
						.padding()
				}.background(Color.red)
			}
        }
    }
}

#Preview {
    ContentView()
}
