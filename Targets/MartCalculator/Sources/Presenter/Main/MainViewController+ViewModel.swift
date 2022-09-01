//
//  MainViewController+ViewModel.swift
//  MartCalculator
//
//  Created by MK on 2022/09/01.
//  Copyright © 2022 com.MK. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa

extension MainViewController {
    
    struct UserInteraction {
        
    }
    
    struct Output {
        
    }
    
    class ViewModel {
        
        // MARK: - Property
        
        let userInteractions = UserInteraction()
        let outputs = Output()
        
        private let disposeBag = DisposeBag()
        
        // MARK: - Init
        
        init() {
            bindUserInteraction()
        }
        
        // MARK: - bind
        
        private func bindUserInteraction() {
            
        }
    }
}
