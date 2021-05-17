//
//  RegistrationViewController.swift
//  MVVM-Coordinator
//
//  Created by Dipak Sonara on 17/05/21.
//

import UIKit

class RegistrationViewController: UIViewController {

    var viewModel : RegistrationViewModel!
    @IBOutlet weak var backToLoginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func backToLoginTapped(_ sender: Any) {
        viewModel.goToLogin()
    }

}
