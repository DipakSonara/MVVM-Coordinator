//
//  AppCoordinator.swift
//  MVVM-Coordinator
//
//  Created by Dipak Sonara on 17/05/21.
//

import UIKit

protocol Coordinator {
    var parentCoordinator: Coordinator? { get set }
    var children: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}

enum Storyboards:String {
    case main = "Main"
}

enum Identifiers:String {
    case login = "LoginViewControllerID"
    case register = "RegistrationViewControllerID"
}

class AppCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    let storyboard = UIStoryboard.init(name: Storyboards.main.rawValue, bundle: .main)
    
    init (navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        print("App Coordinator Start")
        goToLoginPage()
    }
    
    func goToLoginPage() {
        let loginVC = storyboard.instantiateViewController(withIdentifier: Identifiers.login.rawValue) as! LoginViewController
        
        let loginViewModel = LoginViewModel.init()
        loginViewModel.coordinator = self
        loginVC.viewModel = loginViewModel
        navigationController.pushViewController(loginVC, animated: true)
    }
    
    func goToRegisterationPage(){
        let registerVC = storyboard.instantiateViewController(withIdentifier: Identifiers.register.rawValue) as! RegistrationViewController
        
        let registerViewModel = RegistrationViewModel.init()
        registerViewModel.coordinator = self
        registerVC.viewModel = registerViewModel
        navigationController.pushViewController(registerVC, animated: true)
    }
}

