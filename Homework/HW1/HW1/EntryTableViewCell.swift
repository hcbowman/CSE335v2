//
//  EntryTableViewCell.swift
//  HW1
//
//  Created by Hunter Bowman on 10/10/21.
//

import UIKit

class EntryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var systolicLabel: UILabel!
    @IBOutlet weak var diastolicLabel: UILabel!
    @IBOutlet weak var sugarLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
