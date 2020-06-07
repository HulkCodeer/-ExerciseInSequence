//
//  AppDelegate.swift
//  ExerciseInSequence
//
//  Created by 박현진 on 2020/06/03.
//  Copyright © 2020 박현진. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var appCoordinator: AppCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
                
        let navigationController = UINavigationController()
        
        self.appCoordinator = AppCoordinator(navigationController)
        self.appCoordinator?.startMain()
            
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
       
        return true
    }
}

