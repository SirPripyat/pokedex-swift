//
//  HomeEndpoint.swift
//  Pokedex
//
//  Created by Leonardo Rossi on 10/03/24.
//

import Foundation

enum HomeEndpoint {
	case getAllPokemons
}

extension HomeEndpoint: Endpoint {
	var path: String {
		switch self {
			case .getAllPokemons:
				return "/pokemon"
		}
	}
	
	var method: RequestMethod {
		switch self {
			case .getAllPokemons:
				return .get
		}
	}
	
	var header: [String : String]? {
		switch self {
			case .getAllPokemons:
				return nil
		}
	}
	
	var body: [String : String]? {
		switch self {
			case .getAllPokemons:
				return nil
		}
	}
	
	
}
