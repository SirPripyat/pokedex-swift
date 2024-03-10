//
//  RequestError.swift
//  Pokedex
//
//  Created by Leonardo Rossi on 10/03/24.
//

import Foundation

enum RequestError: Error {
	case decode
	case invalidUrl
	case noResponse
	case unknown
	case custom(_ error: [String: Any])
	
	var customMessage: String {
		switch self {
			case .decode:
				return "Erro de decodificação"
				
			case .invalidUrl:
				return "URL inválida"
			
			case .noResponse:
				return "Nenhuma resposta"
			
			default:
				return "Erro desconhecido"
		}
	}
}
