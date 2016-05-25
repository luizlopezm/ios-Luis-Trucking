//
//  NeededFunctions.swift
//  Luis Trucking
//
//  Created by Luiz Lopez on 5/5/16.
//  Copyright © 2016 Luis Trucking. All rights reserved.
//

import Foundation
import SystemConfiguration

extension Double {
    /// Rounds the double to decimal places value
    func roundToPlaces(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return round(self * divisor) / divisor
    }
}

func isConnectedToNetwork() -> Bool {
    var zeroAddress = sockaddr_in()
    zeroAddress.sin_len = UInt8(sizeofValue(zeroAddress))
    zeroAddress.sin_family = sa_family_t(AF_INET)
    let defaultRouteReachability = withUnsafePointer(&zeroAddress) {
        SCNetworkReachabilityCreateWithAddress(nil, UnsafePointer($0))
    }
    var flags = SCNetworkReachabilityFlags()
    if !SCNetworkReachabilityGetFlags(defaultRouteReachability!, &flags) {
        return false
    }
    let isReachable = (flags.rawValue & UInt32(kSCNetworkFlagsReachable)) != 0
    let needsConnection = (flags.rawValue & UInt32(kSCNetworkFlagsConnectionRequired)) != 0
    return (isReachable && !needsConnection)
}


func ApprovedTickets(currTick: [TicketModel]) -> Int {
    var ticketCount = 0;
    
    for ticket in currTick{
        if(ticket.approval == "1")
        {
            ticketCount += 1
        }
        
    }
    return ticketCount
    
}
func ParseDate(Dt: String) -> String{
    var RT = ""
    let tmp = Range(Dt.startIndex.advancedBy(5)..<Dt.endIndex.advancedBy(-3))
    RT = Dt[tmp]
    return RT
}



func TotalMonth(currTick: [TicketModel]) -> Double {
    var ticketCount = 0.0;
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let date = NSDate()
    let Month = ParseDate(dateFormatter.stringFromDate(date))
    
    for ticket in currTick{
        if(ticket.approval == "1")
        {
            if(ParseDate(ticket.ticketdate!) == Month)
            {
                ticketCount += (Double(ticket.total!)! * 0.30)
            }
        }
        
    }
    return ticketCount.roundToPlaces(2)
    
}

func TotalTickets(currTick: [TicketModel]) -> Int {
    var ticketCount = 0;
    
    ticketCount = currTick.count
    
    return ticketCount
    
}

func TotalTicketsMonth(currTick: [TicketModel]) -> Int {
    var ticketCount = 0;
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let date = NSDate()
    let Month = ParseDate(dateFormatter.stringFromDate(date))
    
    for ticket in currTick{
            if(ParseDate(ticket.ticketdate!) == Month)
            {
                ticketCount += 1
            }
    }
    return ticketCount
    
}

func UnapprovedTicketsMonth(currTick: [TicketModel]) -> Int {
    var ticketCount = 0;
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let date = NSDate()
    let Month = ParseDate(dateFormatter.stringFromDate(date))
    
    for ticket in currTick{
        if(ticket.approval == "0")
        {
            if(ParseDate(ticket.ticketdate!) == Month)
            {
                ticketCount += 1
            }
        }
    }
    return ticketCount
    
}

func ApprovedTicketsMonth(currTick: [TicketModel]) -> Int {
    var ticketCount = 0;
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let date = NSDate()
    let Month = ParseDate(dateFormatter.stringFromDate(date))
    
    for ticket in currTick{
        if(ticket.approval == "1")
        {
            if(ParseDate(ticket.ticketdate!) == Month)
            {
                ticketCount += 1
            }
        }
    }
    return ticketCount
    
}

func UnapprovedTickets(currTick: [TicketModel]) -> Int {
    var ticketCount = 0;
    
    for ticket in currTick{
        if(ticket.approval == "0")
        {
            ticketCount += 1
        }
        
    }
    return ticketCount
    
}



