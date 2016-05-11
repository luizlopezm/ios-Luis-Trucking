//
//  ViewControllerExSub.swift
//  Luis Trucking
//
//  Created by Luiz Lopez on 5/2/16.
//  Copyright © 2016 Luis Trucking. All rights reserved.
//

import UIKit
import Eureka

var Date2 = ""
var TruckID2 = ""
var Amount2 = ""
var ExpenseT = ""
var Vendor = ""
var Descript = ""


class ViewControllerExSub: FormViewController {
    
    var TruckIDs = GetIDs()
    var Expenses = GetExpenseType()
    var Vendors = GetVendor()

    override func viewDidLoad() {
        super.viewDidLoad()
        addTicketForm(toForm: form)

        // Do any additional setup after loading the view.
    }
    
    private func addTicketForm(toForm form: Form) {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        form +++ Section("Expense Form")
            <<< ActionSheetRow<String>("TruckIDs") {$0.title = "TruckID: ";$0.selectorTitle = "Please Select a TruckID:"; $0.options = TruckIDs; $0.value = TruckIDs[0]}.onChange{row in TruckID2 = row.value!}
            <<< ActionSheetRow<String>("ExpenseType") {$0.title = "Expense Type: ";$0.selectorTitle = "Please Select an Expense:"; $0.options = Expenses; $0.value = Expenses[0]}.onChange{row in ExpenseT = row.value!}
            <<< ActionSheetRow<String>("Vender") {$0.title = "Vender: ";$0.selectorTitle = "Please Select a Vender:"; $0.options = Vendors; $0.value = Vendors[0]}.onChange{row in Vendor = row.value!}
            <<< DateRow("Date") {$0.title = "Date: " ; $0.value = NSDate()}.onChange{row in Date2 = dateFormatter.stringFromDate(row.value!)}
            <<< TextRow("Amount") { $0.title = "Amount:"}.onChange{row in if row.value != nil{Amount2 = row.value!}}
            <<< TextAreaRow("Des"){ $0.title = "Description:"}.onChange{row in if row.value != nil{Descript = row.value!}}
        
        
        
        Date2 = dateFormatter.stringFromDate(form.rowByTag("Date")!.value!)
        Vendor = form.rowByTag("Vender")!.value!
        ExpenseT = form.rowByTag("ExpenseType")!.value!
        TruckID2 = form.rowByTag("TruckIDs")!.value!
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
