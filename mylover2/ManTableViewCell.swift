//
//  ManTableViewCell.swift
//  mylover2
//
//  Created by Yvonne on 2019/11/30.
//  Copyright © 2019 Yvonne. All rights reserved.
//

import UIKit

class ManTableViewCell: UITableViewCell {
    
    @IBOutlet weak var manImageView: UIImageView!
    
    @IBOutlet weak var manLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
