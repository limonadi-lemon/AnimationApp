//
//  ViewController.swift
//  AnimationApp
//
//  Created by thuhuong2022 on 25/8/24.
//

import UIKit

class ViewController: UIViewController {
    var imageIndex: Int = 1
    func updateImage() {
        goodNightImage.image = UIImage(named: "goodNight-Images/goodnight\(imageIndex)")
       
        
    }
   

    @IBAction func btnNext(_ sender: Any) {
        imageIndex = imageIndex + 1
        updateImage()
        if imageIndex <= 36 {
            imageIndex = imageIndex + 1
            updateImage()
            
        }
        else {
            imageIndex = 1
            updateImage()
        }
    }
    @IBOutlet weak var goodNightImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      updateImage()
    }
    
}

