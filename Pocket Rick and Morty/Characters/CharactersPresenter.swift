//
//  CharactersPresenter.swift
//  Pocket Rick and Morty
//
//  Created by Felipe Arimateia on 10/03/19.
//  Copyright © 2019 Felipe Arimateia. All rights reserved.
//

import Foundation


class CharactersPresenter: ICharactersPresenter {

    let view: CharactersView
    let repository: CharacterRepostiroy
    var listCharacters: Array<Character> = []
    var page: Int = 1
    var character: Character?
    
    init(view: CharactersView) {
        self.view = view
        self.repository = CharacterRepostiroy()
    }
    
    func loadCharacters() {
        view.showLoading(show: true)
        
        repository.loadCharacters(page: page) { characters in
            if let characters = characters {
                self.listCharacters += characters
                self.view.showCharacters(characters: characters)
            }
            self.view.showLoading(show: false)
        }
    }
    
    func characters() -> Array<Character> {
        return self.listCharacters
    }
    
    func count() -> Int {
        return self.characters().count
    }
    
    func getCharacters(index: Int) -> Character {
        return listCharacters[index]
    }
    
    func selectCharacter(index: Int) {
        character = listCharacters[index]
    }
    
    func selectedCharacter() -> Character? {
        return self.character
    }
    
}
