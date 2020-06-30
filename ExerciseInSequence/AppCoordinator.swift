//
//  CustomNavigationController.swift
//  ExerciseInSequence
//
//  Created by 박현진 on 2020/06/07.
//  Copyright © 2020 박현진. All rights reserved.
//

import UIKit

protocol Coordinatable {
    func startMain()
}

internal final class AppCoordinator: Coordinatable {
    var navigationController: UINavigationController
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.navigationController.isNavigationBarHidden = true
    }
    
    func startMain() {
        let vc = MainViewController(reactor: MainViewReactor())
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: false)
    }
}
