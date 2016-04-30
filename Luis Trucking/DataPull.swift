//
//  DataPull.swift
//  Luis Trucking
//
//  Created by Luiz Lopez on 4/29/16.
//  Copyright © 2016 Luis Trucking. All rights reserved.
//

import Foundation

func GetHaulers() -> [String]{
    var RT = [String]()
    
    let request = NSMutableURLRequest(URL: NSURL(string: "http://ec2-52-33-225-48.us-west-2.compute.amazonaws.com/iOSGetHaulers.php")!)
    //request.HTTPMethod = "POST"
    
    let semaphore = dispatch_semaphore_create(0)
    
    //request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
    let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { data, response, error in
        guard error == nil && data != nil else {                                                          // check for fundamental networking error
            print("error=\(error)")
            return
        }
        
        var jsonResult: NSMutableArray = NSMutableArray()
        
        do{
            jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions.AllowFragments) as! NSMutableArray
            
        } catch let error as NSError {
            print(error)
            
        }
        
        var jsonElement:String
        for(var i = 0; i < jsonResult.count; i++)
        {
            
            jsonElement = jsonResult[i] as! String
        
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
            return
        }
        
        var jsonResult: NSMutableArray = NSMutableArray()
        
        do{
            jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions.AllowFragments) as! NSMutableArray
            
        } catch let error as NSError {
            print(error)
            
        }
        
        var jsonElement:String
        for(var i = 0; i < jsonResult.count; i++)
        {
            
            jsonElement = jsonResult[i] as! String
            
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
            return
        }
        
        var jsonResult: NSMutableArray = NSMutableArray()
        
        do{
            jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions.AllowFragments) as! NSMutableArray
            
        } catch let error as NSError {
            print(error)
            
        }
        
        var jsonElement:String
        for(var i = 0; i < jsonResult.count; i++)
        {
            
            jsonElement = jsonResult[i] as! String
            
            RT.append(jsonElement)
        }
        
        dispatch_semaphore_signal(semaphore)
        
    }
    task.resume()
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER)
    return RT
}


func SubmitTicket(ticket: TicketModel){
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
    print(log)
    let postString = log
    request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
    let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { data, response, error in
        guard error == nil && data != nil else {                                                          // check for fundamental networking error
            print("error=\(error)")
            return
        }
        
        let responseString = NSString(data: data!, encoding: NSUTF8StringEncoding)
        
        
        print(responseString) //200 Good
        dispatch_semaphore_signal(semaphore)
        
    }
    task.resume()
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER)
   
}