//
//  PokemonSectionBodyModel.swift
//  Pokedex
//
//  Created by Leonardo Rossi on 09/03/24.
//

import Foundation

struct PokemonSectionBodyModel: Identifiable {
	var photo: String
	var name: String
	var types: [String]
	var id: String
}

let mockPokemonData: [PokemonSectionBodyModel] = [
	PokemonSectionBodyModel(photo: "bulbasaur.jpg", name: "Bulbasaur", types: ["grass", "poison"], id: "001"),
	PokemonSectionBodyModel(photo: "ivysaur.jpg", name: "Ivysaur", types: ["grass", "poison"], id: "002"),
	PokemonSectionBodyModel(photo: "venusaur.jpg", name: "Venusaur", types: ["grass", "poison"], id: "003"),
	PokemonSectionBodyModel(photo: "charmander.jpg", name: "Charmander", types: ["fire"], id: "004"),
	PokemonSectionBodyModel(photo: "charmeleon.jpg", name: "Charmeleon", types: ["fire"], id: "005"),
	PokemonSectionBodyModel(photo: "charizard.jpg", name: "Charizard", types: ["fire", "flying"], id: "006"),
	PokemonSectionBodyModel(photo: "squirtle.jpg", name: "Squirtle", types: ["water"], id: "007"),
	PokemonSectionBodyModel(photo: "wartortle.jpg", name: "Wartortle", types: ["water"], id: "008"),
	PokemonSectionBodyModel(photo: "blastoise.jpg", name: "Blastoise", types: ["water"], id: "009"),
	PokemonSectionBodyModel(photo: "pikachu.jpg", name: "Pikachu", types: ["electric"], id: "025")
]
