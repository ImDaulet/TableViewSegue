//
//  CustomCell.swift
//  TableViewSeugueExample
//
//  Created by Daulet Ashikbayev on 17.02.2022.
//

import UIKit

class CustomCell: UITableViewCell {

    
    @IBOutlet weak var studentImageView: UIImageView!
    
    @IBOutlet weak var studentGpa: UILabel!
    
    @IBOutlet weak var studentName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
