//
//  CharacterRepository.swift
//  Pocket Rick and Morty
//
//  Created by Felipe Arimateia on 10/03/19.
//  Copyright © 2019 Felipe Arimateia. All rights reserved.
//

import Foundation

class CharacterRepostiroy {
    
    let api: RickAndMortyApi
    
    init() {
        api = RickAndMortyApi()
    }
    
    func loadCharacters(page: Int, completion: @escaping(_ characters: Array<Character>?) -> Void) {
        api.loadCharacters(page: page) { data in
            let decoder = JSONDecoder()
            do {
                if let data = data {
                    let response = try decoder.decode(CharactersResponse.self, from: data)
                    completion(response.results)
                } else {
                    completion(nil)
                }
            } catch let error {
                print(error)
                completion(nil)
            }
        }
    }
}
