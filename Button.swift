//
//  Button.swift
//  MedHack
//
//  Created by WEILINQING on 9/24/16.
//  Copyright © 2016 WEILINQING. All rights reserved.
//

//this button highlights eveything


import UIKit
class Button: UIView {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let button = UIButton(frame: CGRect(x: 150, y: 190, width: 20, height: 20))
        button.backgroundColor = UIColor.clearColor()
        button.addTarget(self, action: "ButtonTapped:",forControlEvents: .TouchDown)
        addSubview(button)
    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }
    
    var mouseTracker = MouseTracker()
    func ButtonTapped(button: UIButton) {
        mouseTracker.counter++
        mouseTracker.wordDict["temporal"] = mouseTracker.counter
        UIApplication.sharedApplication().openURL(NSURL(string: "http://brainmadesimple.com/temporal-lobe.html")!)
        // File location
        let fileURLProject = NSBundle.mainBundle().pathForResource("notes", ofType: "txt")
        // Read from the file
        var readStringProject = ""
        do {
            readStringProject = try String(contentsOfFile: fileURLProject!, encoding: NSUTF8StringEncoding)
        } catch let error as NSError {
            print("Failed reading from URL:, Error: " + error.localizedDescription)
        }
        
        print(readStringProject)
   
    }
}
