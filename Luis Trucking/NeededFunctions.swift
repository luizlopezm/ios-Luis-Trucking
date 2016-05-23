//
//  NeededFunctions.swift
//  Luis Trucking
//
//  Created by Luiz Lopez on 5/5/16.
//  Copyright © 2016 Luis Trucking. All rights reserved.
//

import Foundation
import SystemConfiguration

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

func TotalTickets(currTick: [TicketModel]) -> Int {
    var ticketCount = 0;
    
    ticketCount = currTick.count
    
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

