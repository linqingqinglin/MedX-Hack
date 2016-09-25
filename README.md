# MedX-Hack



 # Functional modules include interaction with medical record vocabulary (redirecting, mouse tracker) 
    and adding personal symptom pictures from local photolibrary. 
    
 #Data collection in two forms: Plist(tracking mouse clicking), patient's digital photos uploading 
 together with medcical recorder. 
    
 #Modules:
 #AppleDelegate.swift
    Interacting with system
    addition of PlistManager.sharedInstance.startPlistManager() triggers PlistManager

 #ViewController.swift
    Interface Design
    Add-on Features including "Add Image"
    
 
 #Button. swift
    Custom user click button, function as redirecting, highlighting.
 
 #notes.swift
    local Medcial Record file
 
 #MouseTrackerModel.swift
    Track user mouse clicking by updating data using PlistManager
 
 #PlistManager.swift
     [string:Int] dictionary, opened up with AppDelegate
     
 #MyData.plist
     Exportable plist file, can be retrived using Plist Editor at Physician End
 
 #Main.storyboard
    Visual Image editing 
 
 
 
 
 
 
 
 
