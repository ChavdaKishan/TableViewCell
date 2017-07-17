//
//  TableViewCell.swift
//  TableViewDemo
//
//  Created by iFlame on 7/17/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var titlelbl: UILabel!
    
    @IBOutlet weak var subtitlelbl: UILabel!
    
    @IBOutlet weak var Image1: UIImageView!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
