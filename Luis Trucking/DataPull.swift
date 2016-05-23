//
//  DataPull.swift
//  Luis Trucking
//
//  Created by Luiz Lopez on 4/29/16.
//  Copyright © 2016 Luis Trucking. All rights reserved.
//

import Foundation
var Connect = true


func GetHaulers() -> [String]{
    var RT = [String]()
    
    let request = NSMutableURLRequest(URL: NSURL(string: "http://ec2-52-33-225-48.us-west-2.compute.amazonaws.com/iOSGetHaulers.php")!)
    //request.HTTPMethod = "POST"
    
    let semaphore = dispatch_semaphore_create(0)
    
    //request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
    let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { data, response, error in
        guard error == nil && data != nil else {                                                          // check for fundamental networking error
            print("error=\(error)")
            dispatch_semaphore_signal(semaphore)
            return
        }
        
        var jsonResult: NSMutableArray = NSMutableArray()
        
        do{
            jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions.AllowFragments) as! NSMutableArray
            
        } catch let error as NSError {
            print(error)
            
        }
        
        var jsonElement:String
        for jt in jsonResult
        {
            
            jsonElement = jt as! String
        
            RT.append(jsonElement)
        }
        
        dispatch_semaphore_signal(semaphore)
        
    }
    task.resume()
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER)
    return RT
}






func GetBrokers() -> [String]{
    var RT = [String]()
    
    let request = NSMutableURLRequest(URL: NSURL(string: "http://ec2-52-33-225-48.us-west-2.compute.amazonaws.com/iOSGetBrokers.php")!)
    //request.HTTPMethod = "POST"
    
    let semaphore = dispatch_semaphore_create(0)
    
    //request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
    let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { data, response, error in
        guard error == nil && data != nil else {                                                          // check for fundamental networking error
            print("error=\(error)")
            dispatch_semaphore_signal(semaphore)
            return
        }
        
        var jsonResult: NSMutableArray = NSMutableArray()
        
        do{
            jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions.AllowFragments) as! NSMutableArray
            
        } catch let error as NSError {
            print(error)
            
        }
        
        var jsonElement:String
        for jt in jsonResult
        {
            
            jsonElement = jt as! String
            
            RT.append(jsonElement)
        }
        
        dispatch_semaphore_signal(semaphore)
        
    }
    task.resume()
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER)
    return RT
}

func GetExpenseType() -> [String]{
    var RT = [String]()
    
    let request = NSMutableURLRequest(URL: NSURL(string: "http://ec2-52-33-225-48.us-west-2.compute.amazonaws.com/iOSGetExpenseType.php")!)
    //request.HTTPMethod = "POST"
    
    let semaphore = dispatch_semaphore_create(0)
    
    //request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
    let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { data, response, error in
        guard error == nil && data != nil else {                                                          // check for fundamental networking error
            print("error=\(error)")
            dispatch_semaphore_signal(semaphore)
            return
        }
        
        var jsonResult: NSMutableArray = NSMutableArray()
        
        do{
            jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions.AllowFragments) as! NSMutableArray
            
        } catch let error as NSError {
            print(error)
            
        }
        
        var jsonElement:String
        for jt in jsonResult
        {
            
            jsonElement = jt as! String
            
            RT.append(jsonElement)
        }
        
        dispatch_semaphore_signal(semaphore)
        
    }
    task.resume()
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER)
    return RT
}


func GetVendor() -> [String]{
    var RT = [String]()
    
    let request = NSMutableURLRequest(URL: NSURL(string: "http://ec2-52-33-225-48.us-west-2.compute.amazonaws.com/iOSGetVendor.php")!)
    //request.HTTPMethod = "POST"
    
    let semaphore = dispatch_semaphore_create(0)
    
    //request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
    let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { data, response, error in
        guard error == nil && data != nil else {                                                          // check for fundamental networking error
            print("error=\(error)")
            dispatch_semaphore_signal(semaphore)
            return
        }
        
        var jsonResult: NSMutableArray = NSMutableArray()
        
        do{
            jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions.AllowFragments) as! NSMutableArray
            
        } catch let error as NSError {
            print(error)
            
        }
        
        var jsonElement:String
        for jt in jsonResult
        {
            
            jsonElement = jt as! String
            
            RT.append(jsonElement)
        }
        
        dispatch_semaphore_signal(semaphore)
        
    }
    task.resume()
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER)
    return RT
}




func GetIDs() -> [String]{
    var RT = [String]()
    
    let request = NSMutableURLRequest(URL: NSURL(string: "http://ec2-52-33-225-48.us-west-2.compute.amazonaws.com/iOSGetTIDs.php")!)
    //request.HTTPMethod = "POST"
    
    let semaphore = dispatch_semaphore_create(0)
    
    //request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
    let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { data, response, error in
        guard error == nil && data != nil else {                                                          // check for fundamental networking error
            print("error=\(error)")
            dispatch_semaphore_signal(semaphore)
            return
        }
        
        var jsonResult: NSMutableArray = NSMutableArray()
        
        do{
            jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions.AllowFragments) as! NSMutableArray
            
        } catch let error as NSError {
            print(error)
            
        }
        
        var jsonElement:String
        for jt in jsonResult
        {
            
            jsonElement = jt as! String
            
            RT.append(jsonElement)
        }
        
        dispatch_semaphore_signal(semaphore)
        
    }
    task.resume()
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER)
    return RT
}


func SubmitTicket(ticket: TicketModel)-> Bool{
    var RT = false
    let request = NSMutableURLRequest(URL: NSURL(string: "http://ec2-52-33-225-48.us-west-2.compute.amazonaws.com/iOSGetTicketInfo.php")!)
    request.HTTPMethod = "POST"

    let ticketID: String = "user=" + ticket.ticketid!
    let ticketDate: String = "date=" + ticket.ticketdate!
    let ticketRate: String = "payrate=" + ticket.rate!
    let ticketT: String = "taskOption=" + ticket.truckid!
    let ticketB: String = "broker=" + ticket.brokername!
    let ticketN: String = "name=" + ticket.drivername!
    let ticketH: String = "hauler=" + ticket.haulername!
    let ticketTN: String = "tons=" + ticket.total!
    let ticketU: String = "login=" + templg
    let semaphore = dispatch_semaphore_create(0)
    
    let log = ticketID + "&" + ticketDate + "&" + ticketRate + "&" + ticketT + "&" + ticketB + "&" + ticketN + "&" + ticketH + "&" + ticketTN + "&" + ticketU
    let postString = log
    request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
    let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { data, response, error in
        guard error == nil && data != nil else {                                                          // check for fundamental networking error
            print("error=\(error)")
            dispatch_semaphore_signal(semaphore)
            return
            
            }
        
        let responseString = NSString(data: data!, encoding: NSUTF8StringEncoding)
        RT = true;
        
        print(responseString) //200 Good
        dispatch_semaphore_signal(semaphore)
        
    }
    task.resume()
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER)
    return RT
}

func SubmitExpense(Expense: ExpenseModel)-> Bool{
    var RT = false
    let request = NSMutableURLRequest(URL: NSURL(string: "http://ec2-52-33-225-48.us-west-2.compute.amazonaws.com/iOSUploadExpense.php")!)
    request.HTTPMethod = "POST"
    
     let ticketU: String = "login=" + templg
     let ticketN: String = "name=" + Expense.drivername!
     let ticketT: String = "truckid=" + Expense.truckid!
     let ticketID: String = "vendor=" + Expense.vendorname!
     let ticketRate: String = "expensetype=" + Expense.expensetype!
     let ticketB: String = "amount=" + Expense.amount!
     let ticketTN: String = "description=" + Expense.details!
     let ticketDate: String = "date=" + Expense.expensedate!

    
    let semaphore = dispatch_semaphore_create(0)
    
    let log = ticketU + "&" + ticketN + "&" + ticketT + "&" + ticketID + "&" + ticketRate + "&" + ticketB + "&" + ticketTN + "&" + ticketDate
    let postString = log
    request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
    let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { data, response, error in
        guard error == nil && data != nil else {                                                          // check for fundamental networking error
            print("error=\(error)")
            dispatch_semaphore_signal(semaphore)
            return
            
        }
        
        let responseString = NSString(data: data!, encoding: NSUTF8StringEncoding)
        RT = true
        
        print(responseString) //200 Good
        dispatch_semaphore_signal(semaphore)
        
    }
    task.resume()
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER)
    return RT
    
}