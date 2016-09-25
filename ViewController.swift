//
//  ViewController.swift
//  MedHack
//
//  Created by WEILINQING on 9/24/16.
//  Copyright © 2016 WEILINQING. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIWebViewDelegate  {

    @IBOutlet weak var photoView: UIImageView!
    
    override func viewDidLoad() {
        
        let temporal = 0
        let Epilepsy = 0
        let MRI = 0
        let amygadala = 0
        let hypometabolism = 0
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    

    @IBAction func AddImage(sender: AnyObject) {
        let ImagePicker = UIImagePickerController()
        ImagePicker.delegate = self
        ImagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        self.presentViewController(ImagePicker, animated: true, completion: nil)
    }
    
    
  
    
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        // The info dictionary contains multiple representations of the image, and this uses the original.
        photoView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        self.dismissViewControllerAnimated(true, completion: nil)
    }

   
    @IBAction func selectImageFrom(sender: UITapGestureRecognizer) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .PhotoLibrary
        imagePickerController.delegate = self
        presentViewController(imagePickerController, animated: true, completion: nil)
        
    }
    
   
}

