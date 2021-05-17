//
//  LoginViewController.swift
//  MVVM-Coordinator
//
//  Created by Dipak Sonara on 17/05/21.
//

import UIKit

class LoginViewController: UIViewController {

    var viewModel : LoginViewModel!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        viewModel.goToRegister()
    }
    


}

