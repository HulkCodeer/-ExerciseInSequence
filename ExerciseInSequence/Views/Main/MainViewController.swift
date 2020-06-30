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
import RxCocoa
import RxSwift

internal final class MainViewController: BaseViewController {
    private lazy var naviTotalView = UIView().then{
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private lazy var naviTitleLbl = UILabel().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "운동 목록"
        $0.numberOfLines = 1
        $0.textAlignment = .center
        $0.font = UIFont.systemFont(ofSize: 15)
        $0.textColor = .black
    }
    
    private lazy var sequenceTableView = UITableView().then{
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.rowHeight = 200
    }
    
    init(reactor: MainViewReactor) {
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func customLoadView() {
        self.contentView.addSubview(naviTotalView)
        naviTotalView.snp.makeConstraints{
            $0.leading.top.trailing.equalToSuperview()
            $0.height.equalTo(44)
        }
        
        let lineView = self.createLineView()
        self.contentView.addSubview(lineView)
        lineView.snp.makeConstraints{
            $0.top.equalTo(naviTotalView.snp.bottom)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(1)
        }
        
        naviTotalView.addSubview(naviTitleLbl)
        naviTitleLbl.snp.makeConstraints{
            $0.center.equalToSuperview()
            $0.height.equalTo(44)
        }
        
        self.contentView.addSubview(sequenceTableView)
        sequenceTableView.snp.makeConstraints{
            $0.top.equalTo(lineView.snp.bottom)
            $0.leading.trailing.bottom.equalToSuperview()
        }
    }
    
    override func customViewDidload() {
        
    }

    internal func bind(reactor: MainViewReactor) {
        bindAction(reactor)
        bindState(reactor)
    }
    
    private func bindAction(_ reactor: MainViewReactor) {
    
    }
    
    private func bindState(_ reactor: MainViewReactor) {
        reactor.state.map{ $0.repos }
            .bind(to: sequenceTableView.rx.items(cellIdentifier: "cell")) { _, repo, cell in
                print("PARK TEST")
            }
            .disposed(by: disposeBag)
    }
}

