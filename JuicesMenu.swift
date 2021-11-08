//
//  JuicesMenu.swift
//  Signature App
//
//  Created by Razan on 27/03/1443 AH.
//

import UIKit

class JuicesMenu: UITableViewCell {

    @IBOutlet weak var addToCart: UIImageView!
    @IBAction func datails(_ sender: Any) {
    }
    @IBOutlet weak var juiceImage: UIImageView!
    @IBOutlet weak var juicetype: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
