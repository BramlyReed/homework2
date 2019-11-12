//
//  AddContVC.swift
//  PhoneBook
//
//  Created by Stanislav on 12.11.2019.
//  Copyright © 2019 Stanislav. All rights reserved.
//

import UIKit

class AddContVC: UIViewController {

    @IBOutlet weak var namefield: UITextField!
    
    @IBOutlet weak var surnamefield: UITextField!
    
    @IBOutlet weak var numberfield: UITextField!
    
    @IBAction func savingcont(_ sender: Any) {
        
        if (namefield.text != "" && surnamefield.text != "" && numberfield.text?.count == 11){
            Contact.shared.append(Contact(name: namefield.text, surname: surnamefield.text, number: numberfield.text))
            self.navigationController?.popViewController(animated: true)
            
        }
    }
    

}
