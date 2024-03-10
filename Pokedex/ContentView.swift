//
//  ContentView.swift
//  Pokedex
//
//  Created by Leonardo Rossi on 09/03/24.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		VStack(spacing: 0) {
			TopAppBarView()
			
			ScrollView {
				PokemonSectionBodyView()
			}
			.frame(maxWidth: .infinity)
			.padding(.top, 24)
			.padding(.bottom, 24)
			.padding(.horizontal, 16)
		}
		.backgroundStyle(.background50)
	}
}

#Preview {
	ContentView()
}
