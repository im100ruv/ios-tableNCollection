//
//  AnimalTVCell.swift
//  TableNCollection
//
//  Created by Im100ruv on 25/01/18.
//  Copyright © 2018 Im100ruv. All rights reserved.
//

import UIKit

class AnimalTVCell: UITableViewCell {

    @IBOutlet weak var ATableCellView: UIView!
    @IBOutlet weak var ATImage: UIImageView!
    @IBOutlet weak var ATLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
