//
//  myTableViewCell.swift
//  examLoacalDatabes
//
//  Created by R82 on 12/04/23.
//

import UIKit

class myTableViewCell: UITableViewCell {
    
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
