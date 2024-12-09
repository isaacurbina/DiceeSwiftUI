//
//  DiceView.swift
//  DiceeSwiftUI
//
//  Created by Isaac Urbina on 12/9/24.
//

import SwiftUI

struct DiceView: View {
	let n: Int
	
	var body: some View {
		Image("dice\(n)")
			.resizable()
			.aspectRatio(1, contentMode: .fit)
			.padding()
	}
}

#Preview {
	DiceView(n: 4)
}
