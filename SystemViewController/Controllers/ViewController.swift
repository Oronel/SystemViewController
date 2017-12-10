//
//  ViewController.swift
//  SystemViewController
//
//  Created by Mac on 10/12/2017.
//  Copyright © 2017 Developers institute. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func shareButton(_ sender: Any) {
        guard let image = imageView.image else {return}
    }
    
    @IBAction func safariButton(_ sender: Any) {
    }
    
    @IBAction func cameraButton(_ sender: Any) {
    }
    
    @IBAction func emaiButton(_ sender: Any) {
    }
    
}

