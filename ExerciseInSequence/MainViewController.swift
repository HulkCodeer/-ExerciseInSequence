//
//  ViewController.swift
//  ExerciseInSequence
//
//  Created by 박현진 on 2020/06/03.
//  Copyright © 2020 박현진. All rights reserved.
//

import UIKit
import ReactorKit
import SnapKit
import Then

class MainViewController: BaseViewController, View {
    let totalView = UIView().then{
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .blue
    }
    
    override func loadView() {
        super.loadView()
        
        self.view.addSubview(self.totalView)
        self.totalView.snp.makeConstraints{
            $0.edges.equalTo(self.view.safeAreaLayoutGuide)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    internal func bind(reactor: MainViewController) {
        bindAction(reactor)
        bindState(reactor)
    }
    
    private func bindAction(_ reactor: MainViewController) {
    
    }
    
    private func bindState(_ reactor: MainViewController) {
        
    }
}

