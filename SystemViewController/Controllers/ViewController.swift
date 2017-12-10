//
//  ViewController.swift
//  SystemViewController
//
//  Created by Mac on 10/12/2017.
//  Copyright © 2017 Developers institute. All rights reserved.
//

import UIKit
import SafariServices
import MessageUI

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func shareButton(_ sender: UIView) {
        guard let image = imageView.image else {return}
        let activityController =
            UIActivityViewController(activityItems: [image],
                                     applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView
            = sender
        present(activityController, animated: true, completion: nil)
    }
    
    @IBAction func safariButton(_ sender: UIButton) {
        if let url = URL(string: "http://www.youtube.com") {
        let safariViewController = SFSafariViewController(url:
            url)
        present(safariViewController, animated: true,
                completion: nil)
    }
}
    
    @IBAction func cameraButton(_ sender: UIButton) {
        
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        let alertController = UIAlertController(title: "Choose Image Source", message: nil, preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
       alertController.addAction(cancelAction)
        
        let cameraAction = UIAlertAction(title: "camera", style: .default, handler: { action in
            print("user selected camera")
        })
        alertController.addAction(cameraAction)
        
        let photoLibraryAction = UIAlertAction(title: "Photo library", style: .default, handler: { action in
            print("user selected Photo library")
        })
        alertController.addAction(photoLibraryAction)
    alertController.popoverPresentationController?.sourceView =
        sender
        
          present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func emaiButton(_ sender: Any) {
        
    }
    
}

