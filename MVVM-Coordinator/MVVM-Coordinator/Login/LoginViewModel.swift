//
//  LoginViewModel.swift
//  MVVM-Coordinator
//
//  Created by Dipak Sonara on 17/05/21.
//

import UIKit

class LoginViewModel {
    weak var coordinator: AppCoordinator!
    func goToRegister() {
        coordinator.goToRegisterationPage()
    }
}
