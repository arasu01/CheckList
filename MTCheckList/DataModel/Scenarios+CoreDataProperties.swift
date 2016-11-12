//
//  Scenarios+CoreDataProperties.swift
//  MTCheckList
//
//  Created by Yogesh Murugesh on 12/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

import Foundation
import CoreData


extension Scenarios {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Scenarios> {
        return NSFetchRequest<Scenarios>(entityName: "Scenarios");
    }

    @NSManaged public var scenarioDescription: String?

}
