//
//  ViewControllerFormM.swift
//  Luis Trucking
//
//  Created by Luiz Lopez on 4/28/16.
//  Copyright © 2016 Luis Trucking. All rights reserved.
//

import UIKit
import Eureka
var truckID = ""
var Date = ""
var TicketID = ""
var Pay = ""
var Hauler = ""
var Broker = ""
var Tons = ""



class ViewControllerTickSub : FormViewController{
    
    var Haulers = [String]()
    var Brokers = [String]()
    var TruckIDs = [String]()
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        if(isConnectedToNetwork())
        {
            Haulers = GetHaulers()
            Brokers = GetBrokers()
            TruckIDs = GetIDs()
            form.removeAll()
            addTicketForm(toForm: form)

        }

        }
        private func addTicketForm(toForm form: Form) {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        form +++ Section("Ticket Form")
            <<< ActionSheetRow<String>("TruckIDs") {$0.title = "TruckID: ";$0.selectorTitle = "Please Select a TruckID:"; $0.options = TruckIDs; $0.value = TruckIDs[0]}.onChange{row in truckID = row.value!}
            <<< ActionSheetRow<String>("Haulers") {$0.title = "Haulers: ";$0.selectorTitle = "Please Select a Hauler:"; $0.options = Haulers; $0.value = Haulers[0]}.onChange{row in Hauler = row.value!}
            <<< ActionSheetRow<String>("Brokers") {$0.title = "Brokers: ";$0.selectorTitle = "Please Select a Broker:"; $0.options = Brokers; $0.value = Brokers[0]}.onChange{row in Broker = row.value!}
            <<< DateRow("Date") {$0.title = "Date: " ; $0.value = NSDate()}.onChange{row in Date = dateFormatter.stringFromDate(row.value!)}
            <<< TextRow("tick") { $0.title = "Ticket ID:" }.onChange{row in if row.value != nil{TicketID = row.value!}}
            <<< TextRow("pay") { $0.title = "Pay Rate:"; $0.cell.textField.keyboardType = UIKeyboardType.DecimalPad }.onChange{row in if row.value != nil{Pay = row.value!}}
            <<< TextRow("tn") { $0.title = "TONS/HOURS:"; $0.cell.textField.keyboardType = UIKeyboardType.DecimalPad}.onChange{row in if row.value != nil{Tons = row.value!}}
        
        Date = dateFormatter.stringFromDate(form.rowByTag("Date")!.value!)
        Hauler = form.rowByTag("Haulers")!.value!
        Broker = form.rowByTag("Brokers")!.value!
        truckID = form.rowByTag("TruckIDs")!.value!

    
    }
    
    
}
