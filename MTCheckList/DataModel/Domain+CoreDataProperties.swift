//
//  Domain+CoreDataProperties.swift
//  MTCheckList
//
//  Created by Yogesh Murugesh on 12/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

import Foundation
import CoreData


extension Domain {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Domain> {
        return NSFetchRequest<Domain>(entityName: "Domain");
    }

    @NSManaged public var domainName: String?
    @NSManaged public var features: NSSet?

}

// MARK: Generated accessors for features
extension Domain {

    @objc(addFeaturesObject:)
    @NSManaged public func addToFeatures(_ value: Features)

    @objc(removeFeaturesObject:)
    @NSManaged public func removeFromFeatures(_ value: Features)

    @objc(addFeatures:)
    @NSManaged public func addToFeatures(_ values: NSSet)

    @objc(removeFeatures:)
    @NSManaged public func removeFromFeatures(_ values: NSSet)

}
