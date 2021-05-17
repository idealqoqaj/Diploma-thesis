//
//  RegjistrohuViewController.swift
//  Tema e Diplomes
//
//  Created by Ideal Cocaj on 24.3.21.
//

import UIKit
import Firebase

class RegjistrohuViewController: UIViewController {

    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       assignbackground()
        
        // Do any additional setup after loading the view.
    }
    

    
    func assignbackground(){
            let background = UIImage(named: "background2")

            var imageView : UIImageView!
            imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = background
            imageView.center = view.center
            view.addSubview(imageView)
            self.view.sendSubviewToBack(imageView)
    
    }
    @IBAction func didPressedBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
  
    @IBAction func registerButton(_ sender: UIButton) {
    
    if let email = emailTextfield.text, let password = passwordTextfield.text{
    
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
    
            if let e = error {
                print(e.localizedDescription)
            }else {
            self.performSegue(withIdentifier: "RegisterToChat", sender: self)
            }
        }
        }
    }
}
