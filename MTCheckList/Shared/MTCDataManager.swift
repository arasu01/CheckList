//
//  MTCDataManager.swift
//  MTCheckList
//
//  Created by Yogesh Murugesh on 12/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

//import Cocoa
import CoreData
import Foundation

class MTCDataManager: NSObject {

    func fetchDomainList(context: NSManagedObjectContext) -> [Domain]? {
        let domainRequest = NSFetchRequest<Domain>(entityName: "Domain")
        var resultArray = [Domain]()
        do {
            resultArray = try context.fetch(domainRequest as! NSFetchRequest<NSFetchRequestResult> ) as! [Domain]
        } catch {
            resultArray = []
        }
        return resultArray
    }
    
    func fetchProjectList(context: NSManagedObjectContext) -> [Projects]? {
        let domainRequest = NSFetchRequest<Projects>(entityName: "Projects")
        var resultArray = [Projects]()
        do {
            resultArray = try context.fetch(domainRequest as! NSFetchRequest<NSFetchRequestResult> ) as! [Projects]
        } catch {
            resultArray = []
        }
        return resultArray
    }
}
