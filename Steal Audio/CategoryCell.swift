//
//  CategoryCell.swift
//  Steal Audio
//
//  Created by Burak Oner on 28.04.2018.
//  Copyright © 2018 Burak Oner. All rights reserved.
//

import UIKit

struct CategoryCellModel  {
    var id : String  = ""
    var name : String  = ""
    var image : String = ""
    init() {    }
}

class CategoryCell: UITableViewCell {

    @IBOutlet weak var imgCategory: UIImageView!
    @IBOutlet weak var lblCategory: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        
    }
    
    func setup(model : CategoryCellModel ) {
        self.lblCategory.text  = model.name
        self.imageView?.loadImage(url: model.image)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
