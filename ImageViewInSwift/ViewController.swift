//
//  ViewController.swift
//  ImageViewInSwift
//
//  Created by Meheboob Nadaf on 2/9/17.
//  Copyright © 2017 com.meheboob. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var listOfNames = ["first.jpg", "Second.jpg", "Third.jpg","Fourth.jpg"]
    
   
    var decideIndex:Int = 0
    @IBAction func rightButton(_ sender: Any) {
        
        
        decideIndex += 1
        
        if (decideIndex == listOfNames.count) {
            decideIndex = 0
            
            self.showAlert(errorMessage: "Right Side Over. Are re start Again?");
        }
        
        self.myImageView.image = UIImage(named : listOfNames[decideIndex])
        
        
    }
    @IBAction func leftButton(_ sender: Any) {
        
        decideIndex -= 1
        
        if (decideIndex < 0) {
            decideIndex = listOfNames.count-1
            
            self.showAlert(errorMessage: "Left side Over. Are u Sure want to start again?")
        }
         self.myImageView.image = UIImage(named : listOfNames[decideIndex])
        
    }
    @IBOutlet var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.myImageView.image = UIImage(named : "first.jpg")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func showAlert  (errorMessage : String) {
        
        let alertController = UIAlertController(title: "Over", message:errorMessage, preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
    }


}

