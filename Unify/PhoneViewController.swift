//
//  PhoneViewController.swift
//  Unify
//
//  Created by Daniel Fernandes on 31/03/2020.
//  Copyright © 2020 Tarek Abdala. All rights reserved.
//

import UIKit

class PhoneViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var phones:[Phone]=[]

    override func viewDidLoad() {
        super.viewDidLoad()

        phones=createArray()
        tableView.register(UINib(nibName: "PhoneViewCell", bundle: nil), forCellReuseIdentifier: "PhoneCell")
    }

    func createArray()->[Phone]{
        
        var tempPhones:[Phone]=[]
        
        let phone1 = Phone(image: #imageLiteral(resourceName: "s10"), name: "Samsung s10")
        let phone2 = Phone(image:#imageLiteral(resourceName: "p30pro"),name:"Huawei p30 pro")
        let phone3 = Phone(image:#imageLiteral(resourceName: "oneplus7pro"),name:"Samsung note 9")
        let phone4 = Phone(image:#imageLiteral(resourceName: "s10"),name:"Oneplus 7 pro")
        
        tempPhones.append(phone1)
        tempPhones.append(phone2)
        tempPhones.append(phone3)
        tempPhones.append(phone4)
        
        return tempPhones
    }
}


extension PhoneViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let phone = phones[indexPath.row]
        let cell =  tableView.dequeueReusableCell(withIdentifier: "PhoneCell", for: indexPath) as! PhoneViewCell
        
        cell.setPhone(phone:phone)
        
        return cell
    }
    
}

extension PhoneViewController: UITableViewDelegate {
    
    
    
}
