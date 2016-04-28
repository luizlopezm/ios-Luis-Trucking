//
//  ViewControllerFormM.swift
//  Luis Trucking
//
//  Created by Luiz Lopez on 4/28/16.
//  Copyright © 2016 Luis Trucking. All rights reserved.
//

import UIKit
import Eureka

class ViewControllerFormM : FormViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addTicketForm(toForm: form)
        
    }
    
    private func addTicketForm(toForm form: Form) {
        form +++ Section("Ticket Form")
            <<< TextRow() { $0.placeholder = "Username" }
            <<< PasswordRow() { $0.placeholder = "Password" }
            <<< ButtonRow() {
                $0.title = "Login"
                
        }
    }
}