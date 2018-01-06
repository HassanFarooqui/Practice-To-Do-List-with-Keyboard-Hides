//
//  TableViewCell.swift
//  PracticeToDoList
//
//  Created by SGI-Mac7 on 06/01/2018.
//  Copyright © 2018 Slash Global. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    @IBOutlet weak var TaskOutlet: UILabel!
    
    
    @IBOutlet weak var Time: UILabel!
    

    @IBOutlet weak var Expriy: UILabel!
    

}
