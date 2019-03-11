//
//  CharactersView.swift
//  Pocket Rick and Morty
//
//  Created by Felipe Arimateia on 10/03/19.
//  Copyright © 2019 Felipe Arimateia. All rights reserved.
//

import Foundation

protocol CharactersView {
    func showCharacters(characters: Array<Character>)
    func showLoading(show: Bool)
    func openDetailCharacter(character: Character)
}
