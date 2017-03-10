//
//  CustomCell.swift
//  customTableView
//
//  Created by Peter Zaporowski on 09.03.2017.
//  Copyright © 2017 Peter Zaporowski. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var mainLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mainImg.layer.cornerRadius = 5.0 // rounded corners on image
        mainImg.clipsToBounds = true 
        
    }
    
    func configureCell(image:UIImage, text:String){
        mainImg.image = image //passing the  image
        mainLbl.text = text  // passing some text
    }
}
