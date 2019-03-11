//
//  CharacterTableViewCell.swift
//  Pocket Rick and Morty
//
//  Created by Felipe Arimateia on 10/03/19.
//  Copyright © 2019 Felipe Arimateia. All rights reserved.
//

import UIKit
import Kingfisher

class CharacterTableViewCell: UITableViewCell {

    @IBOutlet weak var imageCharacter: UIImageView!
    @IBOutlet weak var nameCharacter: UILabel!
    @IBOutlet weak var specieCharacter: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func popular(name: String?, species: String?, image: String?) {
        nameCharacter.text = name ?? ""
        specieCharacter.text = species ?? ""
        if let url = image {
            imageCharacter.kf.setImage(with: URL(string: url))
        }
    }

}
