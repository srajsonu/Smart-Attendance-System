//
//  StudentTableViewCell.swift
//  Smart Attendance System
//
//  Created by ARY@N on 01/04/20.
//  Copyright © 2020 Hitachi Payment Services. All rights reserved.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Roll: UILabel!
    @IBOutlet weak var Sec: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
