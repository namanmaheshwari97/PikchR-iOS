//
//  ViewController.swift
//  PikchR
//
//  Created by Naman Maheshwari on 06/02/17.
//  Copyright © 2017 Naman Maheshwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    var image2 = UIImage()
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cameraTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage]
        image2 = (image as! UIImage?)!
        imageView.image = image as! UIImage?
        
        imagePicker.dismiss(animated: true, completion: nil)
    }

    @IBAction func didTapConvert(_ sender: Any) {
        imageView.image = PikchR.convertGray(image2)
    }
    @IBAction func didTapRGB(_ sender: Any) {
                imageView.image = PikchR.convertRGB(image2)
    }
}

