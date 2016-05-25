//
//  ViewControllerExpense.swift
//  Luis Trucking
//
//  Created by Luiz Lopez on 5/2/16.
//  Copyright © 2016 Luis Trucking. All rights reserved.
//

import UIKit

class ViewControllerExpense: UIViewController {

    @IBOutlet weak var bt: UIButton!
    @IBOutlet weak var Nt: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidLoad()
        Nt.hidden = true
        if(!isConnectedToNetwork())
        {
            bt.hidden = true
            Nt.hidden = false
        }
        else
        {
            bt.hidden = false
            Nt.hidden = true
        }
        // Do any additional setup after loading the view.
    
    }

    @IBAction func log_t(sender: UIBarButtonItem) {
        self.performSegueWithIdentifier("logoff", sender: sender)
    }
    
    @IBAction func SubExpense(sender: UIButton) {
        let expense = ExpenseModel()
        
        expense.expensedate = Date2
        expense.truckid = TruckID2
        expense.expensetype = ExpenseT
        expense.drivername = Name
        expense.vendorname = Vendor
        expense.details = Descript
        expense.amount = Amount2
        if(SubmitExpense(expense))
        {
            self.performSegueWithIdentifier("subeg", sender: sender)
        }
        else
        {
           self.performSegueWithIdentifier("subef", sender: sender) 
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
