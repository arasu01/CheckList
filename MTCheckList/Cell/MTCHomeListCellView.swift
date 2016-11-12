//
//  MTCHomeListCellView.swift
//  MTCheckList
//
//  Created by Yogesh Murugesh on 12/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

import Cocoa

class MTCHomeListCellView: NSTableCellView {

    static let kCellIdentifier = "MTCHomeListCellViewIdentifier"
    
    @IBOutlet var homeListName: NSTextField!

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }
    
}
