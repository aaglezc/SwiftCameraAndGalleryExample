//
//  ViewController.swift
//  SwiftCameraAndGalleryExample
//
//  Created by MacStudent on 2019-03-13.
//  Copyright © 2019 MacStudent. All rights reserved.
//
// https://hackernoon.com/swift-access-ios-camera-and-photo-library-dc1dbe0cdd76

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var img1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func bntGalleryClick(_ sender: UIBarButtonItem)
    {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let myPickerController = UIImagePickerController()
            myPickerController.delegate = self;
            myPickerController.sourceType = .photoLibrary
            //currentVC.present(myPickerController, animated: true, completion: nil)
            self.present(myPickerController, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func btnCamaraClick(_ sender: UIBarButtonItem)
    {
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            let myPickerController = UIImagePickerController()
            myPickerController.delegate = self;
            myPickerController.sourceType = .camera
            
            //uiIMAgecon
            
            //currentVC.present(myPickerController, animated: true, completion: nil)
            self.present(myPickerController, animated: true, completion: nil)
        }
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
        
        if let image =
            info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.img1.image = image
        }
        else
        {
            print("Something went wrong")
        }
        //currentVC.dismiss(animated: true, completion: nil)
        self.dismiss(animated: true, completion: nil)
    }
            
      
        
        

}

