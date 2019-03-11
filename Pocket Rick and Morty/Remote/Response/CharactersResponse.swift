//
//  CharactersResponse.swift
//  Pocket Rick and Morty
//
//  Created by Felipe Arimateia on 10/03/19.
//  Copyright © 2019 Felipe Arimateia. All rights reserved.
//

import Foundation

class CharactersResponse: Codable {
    let info: Info?
    let results: Array<Character>?
}
