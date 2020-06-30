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

class BaseViewController: UIViewController, Storyboarded {
    internal var coordinator: AppCoordinator?
    internal var disposeBag = DisposeBag()
    
    lazy private(set) var className: String = {
        return type(of: self).description().components(separatedBy: ".").last ?? ""
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(nibName: nil, bundle: nil)
    }
    
    deinit {
        print("DEINIT: \(self.className)")
    }
    
    lazy var contentView = UIView().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()        
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
            
    func createLineView() -> UIView {
        let lineView = UIView()
        lineView.backgroundColor = .gray
        return lineView
    }
    
    func customLoadView() {}
    func customViewDidload() {}
}
