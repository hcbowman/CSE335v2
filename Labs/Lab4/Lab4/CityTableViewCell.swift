//
//  CityTableViewCell.swift
//  Lab4
//
//  Created by Hunter Bowman on 9/26/21.
//

import UIKit

class CityTableViewCell: UITableViewCell {

    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var cityDescription: UILabel!
    @IBOutlet weak var cityImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
