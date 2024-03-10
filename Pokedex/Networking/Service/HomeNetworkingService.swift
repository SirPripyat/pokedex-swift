//
//  HomeNetworkingService.swift
//  Pokedex
//
//  Created by Leonardo Rossi on 10/03/24.
//

import Foundation

protocol HomeServiceable {
	func getAllPokemons() async throws -> Result<[GetAllPokemons]?, RequestError>
}

struct HomeNetworkingService: HTTPClient, HomeServiceable {
	func getAllPokemons() async throws -> Result<[GetAllPokemons]?, RequestError> {
		await sendRequest(endpoint: HomeEndpoint.getAllPokemons, responseModel: [GetAllPokemons].self)
	}
}
