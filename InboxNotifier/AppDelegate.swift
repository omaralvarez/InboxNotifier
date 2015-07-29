//
//  AppDelegate.swift
//  InboxNotifier
//
//  Created by Luis Omar Alvarez Mures on 28/07/15.
//  Copyright (c) 2015 Luis Omar Alvarez Mures. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-1) //Variable size
    

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        
        if let button = statusItem.button {
            button.image = NSImage(named: "icon_grey_simple")
            button.title = NSString(string: "222  ")
            //button.setFrameSize(NSMakeSize(30, 20))
            button.imagePosition = NSCellImagePosition(rawValue: 2)!
            button.action = Selector("printQuote:")
        }
        
        let menu = NSMenu()
        
        menu.addItem(NSMenuItem(title: "Print Quote", action: Selector("printQuote:"), keyEquivalent: "P"))
        menu.addItem(NSMenuItem.separatorItem())
        menu.addItem(NSMenuItem(title: "Quit Quotes", action: Selector("terminate:"), keyEquivalent: "q"))
        
        statusItem.menu = menu
        
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    func printQuote(sender: AnyObject) {
        let quoteText = "Never put off until tomorrow what you can do the day after tomorrow."
        let quoteAuthor = "Mark Twain"
        
        println("\(quoteText) — \(quoteAuthor)")
    }

}

