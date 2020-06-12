//
//  ViewController.swift
//  ExerciseInSequence
//
//  Created by 박현진 on 2020/06/03.
//  Copyright © 2020 박현진. All rights reserved.
//

import UIKit
import SnapKit
import Then
import ReactorKit

class MainViewController: BaseViewController, StoryboardView {
    let totalView = UIView().then{
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .blue
    }
    
    init(reactor: MainViewControllerReactor) {
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func customLoadView() {
        print("PARK TEST childCustomLoadView")
    }
    
    override func customViewDidload() {
                
    }

    internal func bind(reactor: MainViewControllerReactor) {
        bindAction(reactor)
        bindState(reactor)
    }
    
    private func bindAction(_ reactor: MainViewControllerReactor) {
    
    }
    
    private func bindState(_ reactor: MainViewControllerReactor) {
        
    }
}

