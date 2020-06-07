//
//  ViewControllerReactor.swift
//  ExerciseInSequence
//
//  Created by 박현진 on 2020/06/03.
//  Copyright © 2020 박현진. All rights reserved.
//

import ReactorKit
import RxCocoa
import RxSwift

final class MainViewControllerReactor: Reactor {
    
    enum Action {
        
    }
    
    enum Mutation {
    
    }
    
    struct State {
        var value: Int
    }
    
    let initialState: State
    
    init() {
        self.initialState = State(value: 0)
    }
    
    func mutate(action: Action) -> Observable<Mutation> {
        
    }
    
    func reduce(state: State, mutation: Mutation) -> State {
        
    }
}
