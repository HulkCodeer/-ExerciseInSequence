//
//  SplashViewController.swift
//  ExerciseInSequence
//
//  Created by 박현진 on 2020/06/28.
//  Copyright © 2020 박현진. All rights reserved.
//

import Foundation
import Then

internal final class SplashViewController: BaseViewController {
    private lazy var splashLbl = UILabel().then{
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .black
        $0.numberOfLines = 3
        $0.textAlignment = .center
        $0.text = """
                    안녕하세요. 이곳은 인옥이가 디자인
                    해주면 바로 이미지 넣을 곳이며
                        운동 관련 앱입니다.
                """
    }
    
    override func customLoadView() {
        contentView.addSubview(self.splashLbl)
        self.splashLbl.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
    
    override func customViewDidload() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            
            let navigationController = UINavigationController()
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            appDelegate.appCoordinator = AppCoordinator(navigationController)
            
            appDelegate.appCoordinator?.startMain()
            
            appDelegate.window = UIWindow(frame: UIScreen.main.bounds)
            appDelegate.window?.rootViewController = navigationController
            appDelegate.window?.makeKeyAndVisible()
        })
    }
}
