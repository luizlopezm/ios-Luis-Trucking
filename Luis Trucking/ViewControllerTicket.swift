//
//  ViewControllerForm.swift
//  Luis Trucking
//
//  Created by Luiz Lopez on 4/27/16.
//  Copyright © 2016 Luis Trucking. All rights reserved.
//

import UIKit

class ViewControllerTicket: UIViewController {
    
    @IBAction func logout(sender: UIBarButtonItem) {
        self.performSegueWithIdentifier("ftab_to_lg", sender: sender)
        
    }
    @IBAction func Submit(sender: UIButton) {
        self.performSegueWithIdentifier("submit", sender: sender)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


