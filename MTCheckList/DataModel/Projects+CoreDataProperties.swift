//
//  Projects+CoreDataProperties.swift
//  MTCheckList
//
//  Created by Yogesh Murugesh on 12/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

import Foundation
import CoreData
 

extension Projects {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Projects> {
        return NSFetchRequest<Projects>(entityName: "Projects");
    }

    @NSManaged public var projectName: String?
    @NSManaged public var versionNumber: String?
    @NSManaged public var features: NSSet?
    @NSManaged public var scenarios: NSSet?

}

// MARK: Generated accessors for features
extension Projects {

    @objc(addFeaturesObject:)
    @NSManaged public func addToFeatures(_ value: Features)

    @objc(removeFeaturesObject:)
    @NSManaged public func removeFromFeatures(_ value: Features)

    @objc(addFeatures:)
    @NSManaged public func addToFeatures(_ values: NSSet)

    @objc(removeFeatures:)
    @NSManaged public func removeFromFeatures(_ values: NSSet)

}

// MARK: Generated accessors for scenarios
extension Projects {

    @objc(addScenariosObject:)
    @NSManaged public func addToScenarios(_ value: Scenarios)

    @objc(removeScenariosObject:)
    @NSManaged public func removeFromScenarios(_ value: Scenarios)

    @objc(addScenarios:)
    @NSManaged public func addToScenarios(_ values: NSSet)

    @objc(removeScenarios:)
    @NSManaged public func removeFromScenarios(_ values: NSSet)

}
