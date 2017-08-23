//
//  TableViewCell.swift
//  DeNovo
//
//  Created by R.M.K. Engineering College  on 19/07/17.
//  Copyright © 2017 R.M.K. Engineering College . All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

   
    @IBOutlet weak var nameLbl: UILabel!
    
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var yearLbl: UILabel!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
