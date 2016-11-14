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

    static let sharedManager = MTCDataManager()
    
    func fetchDomainList(context: NSManagedObjectContext) -> [Domain]? {
        let fetchRequest = NSFetchRequest<Domain>(entityName: "Domain")
        var resultArray = [Domain]()
        do {
            resultArray = try context.fetch(fetchRequest as! NSFetchRequest<NSFetchRequestResult> ) as! [Domain]
        } catch {
            resultArray = []
        }
        return resultArray
    }
    
    func fetchProjectList(context: NSManagedObjectContext) -> [Projects]? {
        let fetchRequest = NSFetchRequest<Projects>(entityName: "Projects")
        var resultArray = [Projects]()
        do {
            resultArray = try context.fetch(fetchRequest as! NSFetchRequest<NSFetchRequestResult> ) as! [Projects]
        } catch {
            resultArray = []
        }
        return resultArray
    }
    
    func fetchFeaturesList(context: NSManagedObjectContext) -> [Features]? {
        let fetchRequest = NSFetchRequest<Features>(entityName: "Features")
        var resultArray = [Features]()
        do {
            resultArray = try context.fetch(fetchRequest as! NSFetchRequest<NSFetchRequestResult> ) as! [Features]
        } catch {
            resultArray = []
        }
        return resultArray
    }

    
}
