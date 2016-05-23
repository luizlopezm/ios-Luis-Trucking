//
//  ViewControllerTicketSubmit.swift
//  Luis Trucking
//
//  Created by Luiz Lopez on 4/29/16.
//  Copyright © 2016 Luis Trucking. All rights reserved.
//

import UIKit

class ViewControllerTickSubmit: UIViewController {
    
    @IBAction func back(sender: UIBarButtonItem) {
        self.performSegueWithIdentifier("hm", sender: sender)
        
    }

    @IBOutlet weak var subm: UILabel!

    override func viewDidLoad(){
        super.viewDidLoad()
        
        
        let date = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "M/dd/yyyy, hh:mm aa"
        subm.text = dateFormatter.stringFromDate(date)
        
        // Do any additional setup after loading the view.
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
