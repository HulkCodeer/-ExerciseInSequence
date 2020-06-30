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

final class MainViewReactor: Reactor {
    
    enum Action {
        case loadNextPage
    }
    
    enum Mutation {
        case appendRepos([String])
    }
    
    struct State {
        var repos: [String] = []
    }
    
    let initialState: State = State()
    let sequenceList = ["1","2","3"]
    
    init() {
        
    }
    
    func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case .loadNextPage:
            return Observable.of(
                Mutation.appendRepos(["1"])
            )
        }
    }
    
    func reduce(state: State, mutation: Mutation) -> State {
        switch mutation {
        case .appendRepos(let repos):
            var newState = state
            newState.repos.append(contentsOf: repos)
            return newState
        }
    }
}
