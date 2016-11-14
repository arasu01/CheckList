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
    
    var domainArray = [Domain]()
    var projectsArray = [Projects]()

    // MARK:- View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        segmentControl.selectedSegment = kPlatformIndex
        segmentControlValueChanged(segmentControl)
    }

    override func viewWillAppear() {
        super.viewWillAppear()
        
        relodDetails()
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    
    // MARK:- Custom Action Methods

    @IBAction func segmentControlValueChanged(_ sender: AnyObject) {
        if segmentControl.selectedSegment == kPlatformIndex {
            self.addNewButton.isHidden = true
        } else if segmentControl.selectedSegment == kProjectIndex {
            self.addNewButton.isHidden = false
        }

        tableView.reloadData()
    }
    
    @IBAction func addNewButtonPressed(_ sender: AnyObject) {
        performSegue(withIdentifier: MTCNewAppViewController.kCellIdentifier, sender: self)
    }
 
    
    // MARK:- Custom Methods

    func projectList() {
        projectsArray = MTCDataManager.sharedManager.fetchProjectList(context: kAppDelegate.managedObjectContext)!
    }
    
    func domainList() {
        domainArray = MTCDataManager.sharedManager.fetchDomainList(context: kAppDelegate.managedObjectContext)!
    }
    
    func relodDetails() {
        projectList()
        domainList()
        tableView.reloadData()
    }
    
    // MARK:- TableView Datasource Methods
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        if segmentControl.selectedSegment == kPlatformIndex {
            return domainArray.count
        } else if segmentControl.selectedSegment == kProjectIndex {
            return projectsArray.count
        }
        
        return 0
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        let cell = tableView.make(withIdentifier: MTCHomeListCellView.kCellIdentifier, owner: self) as! MTCHomeListCellView
        var detailsValue = ""
        if segmentControl.selectedSegment == kPlatformIndex {
            let domain = domainArray[row]
            detailsValue = domain.domainName!
        } else if segmentControl.selectedSegment == kProjectIndex {
            let project = projectsArray[row]
            detailsValue = project.projectName!
        }
        cell.homeListName.stringValue = detailsValue
        return cell

    }
    
    func tableView(_ tableView: NSTableView, heightOfRow row: Int) -> CGFloat {
        return 44
    }
    
}

