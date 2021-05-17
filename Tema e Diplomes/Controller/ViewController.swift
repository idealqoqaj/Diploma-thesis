//
//  ViewController.swift
//  Tema e Diplomes
//
//  Created by Ideal Cocaj on 18.3.21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        assignbackground()
        
        registerButton.layer.cornerRadius = 30
        loginButton.layer.cornerRadius = 30
        titleLabel.text = ""
        var charIndex = 0.0
        let titleText = "Aplikacion për Student 👨‍🎓"
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
      
    }
    
    func assignbackground(){
            let background = UIImage(named: "background6")

            var imageView : UIImageView!
            imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = background
            imageView.center = view.center
            view.addSubview(imageView)
            self.view.sendSubviewToBack(imageView)
    
    }

 
    @IBAction func registerButton(_ sender: Any) {
        
    }
    
    @IBAction func loginButton(_ sender: Any) {
    }
    
}

