//
//  ICharactersPresenter.swift
//  Pocket Rick and Morty
//
//  Created by Felipe Arimateia on 10/03/19.
//  Copyright © 2019 Felipe Arimateia. All rights reserved.
//

import Foundation

protocol ICharactersPresenter {
    func loadCharacters()
    func selectCharacter(index: Int)
    func characters() -> Array<Character>
    func count() -> Int
    func getCharacters(index: Int) -> Character
    func selectedCharacter() -> Character?
}
