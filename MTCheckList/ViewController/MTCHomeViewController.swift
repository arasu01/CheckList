//
//  ViewController.swift
//  MTCheckList
//
//  Created by Yogesh Murugesh on 12/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

import Cocoa

let kPlatformIndex = 0
let kProjectIndex = 1

class MTCHomeViewController: NSViewController, NSTableViewDataSource, NSTableViewDelegate {

    @IBOutlet var segmentControl: NSSegmentedControl!
    @IBOutlet var tableView: NSTableView!
    @IBOutlet var addNewButton: NSButton!
    
    var platformArray = [String]()
    var projectArray = [String]()

    // MARK:- View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        platformArray = ["iOS", "Android", "Web"]
        projectArray = ["Controllex-iOS", "Controllex-Android"]
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    
    // MARK:- Custom Action Methods

    @IBAction func segmentControlValueChanged(_ sender: AnyObject) {
        tableView.reloadData()
    }
    
    @IBAction func addNewButtonPressed(_ sender: AnyObject) {
        performSegue(withIdentifier: "MTCNewViewController", sender: self)
    }
 
    
    // MARK:- TableView Datasource Methods
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        if segmentControl.selectedSegment == kPlatformIndex {
            return platformArray.count
        } else if segmentControl.selectedSegment == kProjectIndex {
            return projectArray.count
        }
        
        return 0
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        let cell = tableView.make(withIdentifier: MTCHomeListCellView.kCellIdentifier, owner: self) as! MTCHomeListCellView
        var detailsValue = ""
        if segmentControl.selectedSegment == kPlatformIndex {
            detailsValue = platformArray[row]
        } else if segmentControl.selectedSegment == kProjectIndex {
            detailsValue = projectArray[row]
        }
        cell.homeListName.stringValue = detailsValue
        cell.homeListName.backgroundColor = NSColor.red
        return cell

    }
    
    func tableView(_ tableView: NSTableView, heightOfRow row: Int) -> CGFloat {
        return 44
    }
    
}

