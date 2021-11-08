//
//  TableViewCellCard.swift
//  Signature App
//
//  Created by Razan on 29/03/1443 AH.
//

import UIKit

class TableViewCellCard: UITableViewCell {
    @IBOutlet weak var cardNameCell: UILabel!
    
    @IBOutlet weak var CarNumCell: UILabel!
    @IBOutlet weak var Datecell: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
