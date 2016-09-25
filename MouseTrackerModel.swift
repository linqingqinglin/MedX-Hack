//
//  MouseTrackerModel.swift
//  MedHack
//
//  Created by WEILINQING on 9/24/16.
//  Copyright © 2016 WEILINQING. All rights reserved.
//


//Track user interaction with medical record using numeric statistical tracking by counting number of times of mouse clicking and add counter into corresponding dictionary [String: Int] using helper method PlistManager. 

import UIKit

struct MouseTracker{
    var counter = 0
    var wordDict:[String:Int] = ["temporal":0, "Epilepsy":0,"MRI":0, "amygadala":0,"hypometabolism":0 ]
    func addToPlist(word: String, counter: Int){
        PlistManager.sharedInstance.addNewItemWithKey(word, value:counter)
    }
    
}
