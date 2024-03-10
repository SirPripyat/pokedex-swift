//
//  PokemonSectionBodyView.swift
//  Pokedex
//
//  Created by Leonardo Rossi on 09/03/24.
//

import SwiftUI

struct PokemonSectionBodyView: View {
    var body: some View {
		LazyVStack(spacing: 32) {
			Text("Pokémons")
				.font(.title)
			.foregroundStyle(.grayscale100)
			
			ForEach(mockPokemonData) { poke in
				PokemonCardView(pokeData: poke)
			}
		}
		.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
		
    }
		
}

#Preview {
    PokemonSectionBodyView()
}
