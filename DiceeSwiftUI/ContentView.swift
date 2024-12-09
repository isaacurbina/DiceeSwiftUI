//
//  ContentView.swift
//  DiceeSwiftUI
//
//  Created by Isaac Urbina on 12/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
			Image("background")
				.resizable()
				.edgesIgnoringSafeArea(.all)
			VStack {
				Image("diceeLogo")
				Spacer()
				HStack {
					DiceView(n: 1)
					DiceView(n: 6)
				}
				.padding(.horizontal)
				Spacer()
				Button(action: {}) {
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
