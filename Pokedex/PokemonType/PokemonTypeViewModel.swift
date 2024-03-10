//
//  PokemonTypeViewModel.swift
//  Pokedex
//
//  Created by Leonardo Rossi on 10/03/24.
//

import Foundation

struct PokemonTypeViewModel {
	let typesOfPokemons: [String: PokemonTypeModel] = [
		"water": PokemonTypeModel(name: "water", color: .water, icon: "Water"),
		"dragon": PokemonTypeModel(name: "dragon", color: .dragon, icon: "Dragon"),
		"electric": PokemonTypeModel(name: "electric", color: .electric, icon: "Electric"),
		"fairy": PokemonTypeModel(name: "fairy", color: .fairy, icon: "Fairy"),
		"ghost": PokemonTypeModel(name: "ghost", color: .ghost, icon: "Ghost"),
		"fire": PokemonTypeModel(name: "fire", color: .fire, icon: "Fire"),
		"ice": PokemonTypeModel(name: "ice", color: .ice, icon: "Ice"),
		"grass": PokemonTypeModel(name: "grass", color: .grass, icon: "Grass"),
		"bug": PokemonTypeModel(name: "bug", color: .bug, icon: "Bug"),
		"fighting": PokemonTypeModel(name: "fighting", color: .fighting, icon: "Fighting"),
		"normal": PokemonTypeModel(name: "normal", color: .normal, icon: "Normal"),
		"rock": PokemonTypeModel(name: "rock", color: .rock, icon: "Rock"),
		"psychic": PokemonTypeModel(name: "psychic", color: .psychic, icon: "Psychic"),
		"ground": PokemonTypeModel(name: "ground", color: .ground, icon: "Ground"),
		"poison": PokemonTypeModel(name: "poison", color: .poison, icon: "Poison"),
		"steel": PokemonTypeModel(name: "steel", color: .steel, icon: "Steel"),
		"flying": PokemonTypeModel(name: "flying", color: .flying, icon: "Flying"),
		"dark": PokemonTypeModel(name: "dark", color: .dark, icon: "Dark")
	]

	func findOutWhatTypePokemonIs(type: String) -> PokemonTypeModel? {
		if let pokemon = typesOfPokemons[type] {
			return pokemon
		}
		return nil
	}
}
