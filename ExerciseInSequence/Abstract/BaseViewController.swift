//
//  BaseViewController.swift
//  ExerciseInSequence
//
//  Created by 박현진 on 2020/06/03.
//  Copyright © 2020 박현진. All rights reserved.
//

import UIKit
import RxSwift
import SnapKit
import Then

class BaseViewController: UIViewController {
    internal var coordinator: AppCoordinator?
    internal var disposeBag = DisposeBag()
    
    lazy private(set) var className: String = {
        return type(of: self).description().components(separatedBy: ".").last ?? ""
    }()
            
    deinit {
        print("DEINIT: \(self.className)")
    }
    
    lazy var contentView = UIView().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("PARK TEST viewdiLoad super")
        self.view.addSubview(self.contentView)
        self.contentView.snp.makeConstraints{
            if #available(iOS 11.0, *) {
                $0.edges.equalTo(self.view.safeAreaLayoutGuide)
            } else {
                $0.edges.equalTo(self.view)
            }
        }
        
        self.customViewDidload()
    }
    
    override func loadView() {
        super.loadView()
        self.customLoadView()
    }
    
    func customLoadView() {}
    
    func customViewDidload() {}
}
