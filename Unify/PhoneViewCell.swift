//
//  PhoneViewCell.swift
//  Unify
//
//  Created by Daniel Fernandes on 31/03/2020.
//  Copyright © 2020 Tarek Abdala. All rights reserved.
//

import UIKit

class PhoneViewCell: UITableViewCell {

    
    @IBOutlet weak var PhoneImageView: UIImageView!
    @IBOutlet weak var PhoneNameView: UILabel!
    
    func setPhone(phone:Phone){
        PhoneImageView.image=phone.image
        PhoneNameView.text=phone.name
    }
}
