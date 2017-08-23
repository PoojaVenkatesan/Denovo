//
//  LoginViewController.swift
//  DeNovo
//
//  Created by R.M.K. Engineering College  on 03/07/17.
//  Copyright © 2017 R.M.K. Engineering College . All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth



class LoginViewController: UIViewController {

    
    @IBOutlet weak var pwField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func loginPressed(_ sender: Any) {
        guard emailField.text != "",pwField.text != "" else{return}
        
        Auth.auth().signIn(withEmail: emailField.text!, password: pwField.text!) { (user, error) in
            if let error = error{
                print(error.localizedDescription)
            }
            
            if let user = user{
                let vc=UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "usersVC")
                
                self.present(vc,animated: true,completion: nil)
            }
        }
        
        
            }
    
    
    

    
}
