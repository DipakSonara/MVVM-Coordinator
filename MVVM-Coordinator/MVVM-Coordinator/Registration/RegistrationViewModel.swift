//
//  RegistrationViewModel.swift
//  MVVM-Coordinator
//
//  Created by Dipak Sonara on 17/05/21.
//

import UIKit

class RegistrationViewModel {
    weak var coordinator : AppCoordinator!
    func goToLogin(){
        coordinator.goToLoginPage()
    }
}
