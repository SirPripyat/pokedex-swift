//
//  GetAllPokemons.swift
//  Pokedex
//
//  Created by Leonardo Rossi on 10/03/24.
//

import Foundation

struct Pokemon: Identifiable, Codable {
	let id: Int
	let name: String
	let pokedexNumber: String
	let image: String
	let pokemonTypes: [String]
}

struct GetAllPokemons: Identifiable, Codable {
	let id: String
	let numberOfPokemons: Int
	let currentPage: Int
	let totalPages: Int
	let pokemon: Pokemon
}

