//
//  TableViewCell.swift
//  RestAPITutorial
//
//  Created by Hertz on 11/12/22.
//

import UIKit

class ToDoCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var contentLabel: UILabel!
    
    
    @IBOutlet weak var selectionSwitch: UISwitch!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    @IBAction func editButtonTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func deleteButtonTapped(_ sender: UIButton) {
    }
    
    
}
