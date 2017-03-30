//
//  DevContentCell.swift
//  OpenHeavens2017
//
//  Created by Segun Solaja on 3/30/17.
//  Copyright © 2017 Segun Solaja. All rights reserved.
//

import UIKit

class DevContentCell: UITableViewCell {
   @IBOutlet weak var messageContent:UILabel!
   @IBOutlet weak var coverImage:UIImageView!
  @IBOutlet weak var messageSubtitle:UILabel!
  @IBOutlet weak var subtitleIcon:UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
