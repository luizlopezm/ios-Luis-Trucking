//
//  ExpenseModel.swift
//  Luis Trucking
//
//  Created by Luiz Lopez on 5/16/16.
//  Copyright © 2016 Luis Trucking. All rights reserved.
//
//
//  TicketModel.swift
//  Test App
//
//  Created by Luiz Lopez on 4/25/16.
//  Copyright © 2016 Luis Trucking. All rights reserved.
//
import Foundation

class ExpenseModel: NSObject {
    
    //properties
    var expensedate: String?
    var expensetype: String?
    var vendorname: String?
    var amount: String?
    var drivername: String?
    var truckid: String?
    var details: String?
    
    
    //empty constructor
    
    override init()
    {
        
    }
    init(expensedate: String, vendorname: String, amount: String, drivername: String, truckid: String, details: String) {
        
        self.expensedate = expensedate
        self.vendorname = vendorname
        self.amount = amount
        self.drivername = drivername
        self.truckid = truckid
        self.details = details

        
    }
    
    func printT()
    {
        print(self.expensetype)
        print(self.expensedate)
        print(self.vendorname)
        print(self.amount)
        print(self.drivername)
        print(self.truckid)
        print(self.details)

        
    }
}


