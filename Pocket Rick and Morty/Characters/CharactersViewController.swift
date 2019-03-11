//
//  FirstViewController.swift
//  Pocket Rick and Morty
//
//  Created by Felipe Arimateia on 10/03/19.
//  Copyright © 2019 Felipe Arimateia. All rights reserved.
//

import UIKit

class CharactersViewController: UIViewController, CharactersView, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: ICharactersPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 150
        
        presenter = CharactersPresenter(view: self)
        presenter?.loadCharacters()
    }
    
    // MARK: CharactersView
    
    func showCharacters(characters: Array<Character>) {
        tableView.reloadData()
    }
    
    func showLoading(show: Bool) {
    }
    
    func openDetailCharacter(character: Character) {
    }
    
    // MARK: - TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.count() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCharacter", for: indexPath) as! CharacterTableViewCell
        if let character = presenter?.getCharacters(index: indexPath.row) {
            cell.popular(name: character.name, species: character.species, image: character.image)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.selectCharacter(index: indexPath.row)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // MARK: - Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailCharacter" {
            if let destination = segue.destination as? CharacterDetailViewController {
                destination.character = presenter?.selectedCharacter()
            }
        }
    }
    
    
}

