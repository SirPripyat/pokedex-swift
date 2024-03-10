//
//  TopAppBarView.swift
//  Pokedex
//
//  Created by Leonardo Rossi on 09/03/24.
//

import SwiftUI

struct TopAppBarView: View {
    var body: some View {
		VStack(spacing: 0) {
			topAppBarBase
			border
		}
	}
	
	var topAppBarBase: some View {
		HStack {
			Image(.pokemonLogo)
		}
		.padding()
		.frame(height: 72)
		.frame(maxWidth: .infinity)
		.background(Color(.background100))
	}
	
	var border: some View {
		Divider()
			.frame(height: 2)
			.background(Color(.branding400))
	}
}

#Preview {
    TopAppBarView()
}
