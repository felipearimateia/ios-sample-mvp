//
//  Character.swift
//  Pocket Rick and Morty
//
//  Created by Felipe Arimateia on 10/03/19.
//  Copyright © 2019 Felipe Arimateia. All rights reserved.
//

import Foundation

class Character: Codable {
    
    let id: Int?
    let name: String?
    let status: String?
    let species: String?
    let type: String?
    let gender: String?
    let origin: Origin?
    let location: Location?
    let image: String?
    let episode: Array<String>?
    let url: String?
    let created: String?
    
}
