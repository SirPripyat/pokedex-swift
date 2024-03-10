//
//  Endpoint.swift
//  Pokedex
//
//  Created by Leonardo Rossi on 10/03/24.
//

import Foundation

protocol Endpoint {
	var schema: String { get }
	var host: String { get }
	var path: String { get }
	var method: RequestMethod { get }
	var header: [String: String]? { get }
	var body: [String: String]? { get }
}

extension Endpoint {
	var schema: String {
		return "http"
	}
	
	var host: String {
		"localhost"
	}
}
