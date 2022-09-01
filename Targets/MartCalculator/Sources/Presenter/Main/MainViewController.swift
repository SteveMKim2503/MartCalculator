//
//  MainViewController.swift
//  MartCalculator
//
//  Created by MK on 2022/09/01.
//  Copyright © 2022 com.MK. All rights reserved.
//

import UIKit

import RxSwift
import RxCocoa

final class MainViewController: UIViewController {
    
    // MARK: - Property
    
    private let viewModel: ViewModel
    private let viewHolder = ViewHolder()
    private let disposeBag = DisposeBag()
    
    // MARK: - Init
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewHolder.place(in: view)
        viewHolder.configureConstraints(for: view)
        
        bindUserInteractions()
        bindOutputs()
    }
    
    // MARK: - Bind
    
    private func bindUserInteractions() {
        
    }
    
    private func bindOutputs() {
        
    }
}
