//
//  MTCNewAppViewController.swift
//  MTCheckList
//
//  Created by Yogesh Murugesh on 12/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

import Cocoa

class MTCNewAppViewController: NSViewController, NSTableViewDataSource, NSTableViewDelegate {

    static let kCellIdentifier = "MTCNewAppViewController"

    @IBOutlet var appName: NSTextField!
    @IBOutlet var tableView: NSTableView!
    @IBOutlet var addNewButton: NSButton!
    @IBOutlet var cancelButton: NSButton!

    var featuresArray = [Features]()

    // MARK:- View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.allowsMultipleSelection = true
    }
    
    override func viewWillAppear() {
        super.viewWillAppear()
        
        relodDetails()
    }
    
    // MARK:- Custom Action Methods

    @IBAction func addNewButtonPressed(_ sender: AnyObject) {
        self.dismiss(sender)
    }
    
    @IBAction func cancelButtonPressed(_ sender: AnyObject) {
        self.dismiss(sender)
    }
    
    
    // MARK:- Custom Methods
    
    func featuresList() {
        featuresArray = MTCDataManager.sharedManager.fetchFeaturesList(context: kAppDelegate.managedObjectContext)!
    }
    
    func relodDetails() {
        featuresList()
        tableView.reloadData()
    }
    
    
    // MARK:- TableView Datasource Methods
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return featuresArray.count
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        let cell = tableView.make(withIdentifier: MTCNewAppViewController.kCellIdentifier, owner: self) as! NSTableCellView
        var detailsValue = ""
        let features = featuresArray[row]
        detailsValue = features.featureName!
        cell.textField?.stringValue = detailsValue
        return cell
        
    }
    
    func tableView(_ tableView: NSTableView, heightOfRow row: Int) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: NSTableView, shouldSelectRow row: Int) -> Bool {
        return true
    }

}
