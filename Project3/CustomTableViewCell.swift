//
//  CustomTableViewCell.swift
//  Project3
//
//  Created by Ильдар Залялов on 24.09.2018.
//  Copyright © 2018 Ильдар Залялов. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var firstlabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        print("Awaked")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
      avatarImageView.image = nil
      firstlabel.text = nil
      secondLabel.text = nil
    }
    
    func configureCell(with model: Animal) {
        
        avatarImageView.image = model.image
        firstlabel.text = model.name
        secondLabel.text = model.country
    }
}
