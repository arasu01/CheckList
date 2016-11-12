//
//  Features+CoreDataProperties.swift
//  MTCheckList
//
//  Created by Yogesh Murugesh on 12/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

import Foundation
import CoreData
 

extension Features {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Features> {
        return NSFetchRequest<Features>(entityName: "Features");
    }

    @NSManaged public var featureName: String?
    @NSManaged public var scenarios: NSSet?

}

// MARK: Generated accessors for scenarios
extension Features {

    @objc(addScenariosObject:)
    @NSManaged public func addToScenarios(_ value: Scenarios)

    @objc(removeScenariosObject:)
    @NSManaged public func removeFromScenarios(_ value: Scenarios)

    @objc(addScenarios:)
    @NSManaged public func addToScenarios(_ values: NSSet)

    @objc(removeScenarios:)
    @NSManaged public func removeFromScenarios(_ values: NSSet)

}
