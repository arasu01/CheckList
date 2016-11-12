//
//  MTCNewAppViewController.swift
//  MTCheckList
//
//  Created by Yogesh Murugesh on 12/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

import Cocoa

class MTCNewAppViewController: NSViewController {

    static let kCellIdentifier = "MTCNewAppViewController"

    @IBOutlet var appName: NSTextField!
    @IBOutlet var tableView: NSTableView!
    @IBOutlet var addNewButton: NSButton!
    @IBOutlet var cancelButton: NSButton!

    // MARK:- View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    
    // MARK:- Custom Action Methods

    @IBAction func addNewButtonPressed(_ sender: AnyObject) {
        self.dismiss(sender)
    }
    
    @IBAction func cancelButtonPressed(_ sender: AnyObject) {
        self.dismiss(sender)
    }
    
}
