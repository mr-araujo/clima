//
//  Weather.swift
//  Clima
//
//  Created by Murillo R. Araujo on 28/04/21.
//

import Foundation

struct Weather: Decodable  {
    let id: Int
    let name: String
    let main: Main
}

struct Main: Decodable {
    let temp: Int
}
