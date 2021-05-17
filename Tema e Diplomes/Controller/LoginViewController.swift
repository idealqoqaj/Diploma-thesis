//
//  LoginViewController.swift
//  Tema e Diplomes
//
//  Created by Ideal Cocaj on 25.3.21.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        // Do any additional setup after loading the view.
    }
    func assignbackground(){
            let background = UIImage(named: "background")

            var imageView : UIImageView!
            imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = background
            imageView.center = view.center
            view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
        
    }
    @IBAction func loginButton(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {
        Auth.auth().signIn(withEmail: email, password: password) {  authResult, error in
            if let e = error {
                print(e)
            }
            else{
                self.performSegue(withIdentifier: "loginToChat", sender: self)
            }
            
            
        }
        }
        
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
