//
//  PokemonCardView.swift
//  Pokedex
//
//  Created by Leonardo Rossi on 09/03/24.
//

import SwiftUI

struct PokemonCardView: View {
	
	// MARK: - Attributes
	
	var pokeData: PokemonSectionBodyModel
	let viewModel: PokemonTypeViewModel = PokemonTypeViewModel()
	
	let pokemonType: (name: String, icon: String, color: Color)
	
	// MARK: - Init
	
	init(pokeData: PokemonSectionBodyModel) {
		self.pokeData = pokeData
		
		if let typeInfo = viewModel.findOutWhatTypePokemonIs(type: pokeData.types[0]) {
			self.pokemonType = (typeInfo.name, typeInfo.icon, typeInfo.color)
		} else {
			self.pokemonType = ("Unknown", "questionmark", .gray)
		}
	}
	
	// MARK: - UI
	
	var body: some View {
		VStack {
			thumbnail
			
			bottomContent
		}
		.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
		.background(Color.background50)
		.cornerRadius(16)
	}
	
	// MARK: - Components
	
	var thumbnail: some View {
		GeometryReader { geometry in
			Image(pokemonType.icon)
				.frame(width: 104, height: 104)
				.position(x: geometry.size.width / 12, y: geometry.size.height * 0.75)
		}
		.padding(.vertical, 24)
		.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
		.background(Color(pokemonType.color))
		.cornerRadius(8)
		
	}
	
	var bottomContent: some View {
		VStack(alignment: .leading, spacing: 16) {
			pokeIdAndName
			
			pokeTypesContainer
		}
		.padding(16)
	}
	
	var pokeIdAndName: some View {
		VStack(alignment: .leading, spacing: 4) {
			Text(pokeData.id)
				.font(.subheadline)
				.foregroundStyle(Color.grayscale200)
			
			Text(pokeData.name)
				.font(.title3)
				.fontWeight(.bold)
				.foregroundStyle(Color.grayscale100)
		}
	}
	
	var pokeTypesContainer: some View {
		HStack(spacing: 8) {
			ForEach(pokeData.types, id: \.self) { type in
				Text(type)
			}
			.frame(height: 32)
			.padding(.horizontal, 12)
			.cornerRadius(16)
			.border(Color.accentColor)
		}
	}
}

#Preview {
	PokemonCardView(pokeData: mockPokemonData[0])
}
