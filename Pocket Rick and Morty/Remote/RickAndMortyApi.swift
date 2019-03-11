//
//  RickAndMortyApi.swift
//  Pocket Rick and Morty
//
//  Created by Felipe Arimateia on 10/03/19.
//  Copyright © 2019 Felipe Arimateia. All rights reserved.
//

import Foundation
import Alamofire

class RickAndMortyApi {
    
    let URL_BASE = "https://rickandmortyapi.com/api"
    
    func loadCharacters(page: Int, completion: @escaping(_ data: Data?) -> Void) {
        Alamofire.request("\(URL_BASE)/character?page=\(page)").response { response in
            guard let data = response.data else { return }
            completion(data)
        }
    }
    
    func getCharacter(id: Int, completion: @escaping(_ data: Data?) -> Void) {
        Alamofire.request("\(URL_BASE)/character/\(id)").response { response in
            guard let data = response.data else { return }
            completion(data)
        }
    }
    
    func loadEpisodes(page: Int, completion: @escaping(_ data: Data?) -> Void) {
        Alamofire.request("\(URL_BASE)/episode?page=\(page)").response { response in
            guard let data = response.data else { return }
            completion(data)
        }
    }
    
    func getEpisode(id: Int, completion: @escaping(_ data: Data?) -> Void) {
        Alamofire.request("\(URL_BASE)/episode/\(id)").response { response in
            guard let data = response.data else { return }
            completion(data)
        }
    }
}
