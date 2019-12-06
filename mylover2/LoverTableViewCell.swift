//
//  LoverTableViewCell.swift
//  mylover2
//
//  Created by Yvonne on 2019/11/27.
//  Copyright © 2019 Yvonne. All rights reserved.
//

import UIKit

class LoverTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    //    nameLabel.text = "show me"
        
        // Configure the view for the selected state
    }

}
