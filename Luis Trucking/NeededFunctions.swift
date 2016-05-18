//
//  NeededFunctions.swift
//  Luis Trucking
//
//  Created by Luiz Lopez on 5/5/16.
//  Copyright © 2016 Luis Trucking. All rights reserved.
//

import Foundation

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