//
//  ViewControllerForm.swift
//  Luis Trucking
//
//  Created by Luiz Lopez on 4/27/16.
//  Copyright © 2016 Luis Trucking. All rights reserved.
//

import UIKit

class ViewControllerTicket: UIViewController {
    
    @IBOutlet weak var bt: UIButton!
    @IBOutlet weak var nt: UILabel!
    
    @IBAction func logout(sender: UIBarButtonItem) {
        self.performSegueWithIdentifier("ftab_to_lg", sender: sender)
        
    }
    
    @IBAction func Submit(sender: UIButton) {
        let tick = TicketModel()
        
        tick.ticketid = TicketID
        tick.ticketdate = Date
        tick.rate = Pay
        tick.total = Tons
        tick.drivername = Name
        tick.truckid = truckID
        tick.brokername = Broker
        tick.haulername = Hauler
        if(SubmitTicket(tick))
        {
            self.performSegueWithIdentifier("submit", sender: sender)
        }
        else
        {
            self.performSegueWithIdentifier("submitF", sender: sender)
        }
    }
    override func viewWillAppear(animated: Bool) {

        super.viewDidLoad()
        nt.hidden = true
        if(!isConnectedToNetwork())
        {
            bt.hidden = true
            nt.hidden = false
        }
        else
        {
            bt.hidden = false
            nt.hidden = true
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


