//
//  MTCNewViewController.swift
//  MTCheckList
//
//  Created by Yogesh Murugesh on 12/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

import Cocoa

class MTCNewViewController: NSViewController {    

    @IBOutlet var featureNameField: NSTextField!
    @IBOutlet var featureDescriptionTextField: NSTextView!
    @IBOutlet var tagsField: NSTextField!
    @IBOutlet var cancelButton: NSButton!
    @IBOutlet var saveButton: NSButton!
    
    // MARK:- View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    
    // MARK:- Custom Action Methods

    @IBAction func cancelButtonPressed(_ sender: AnyObject) {
        self.dismiss(sender)
    }
    
    @IBAction func saveButtonPressed(_ sender: AnyObject) {
        self.dismiss(sender)
    }
}
