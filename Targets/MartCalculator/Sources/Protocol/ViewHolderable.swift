//
//  ViewHolderable.swift
//  MartCalculator
//
//  Created by MK on 2022/09/01.
//  Copyright © 2022 com.MK. All rights reserved.
//

import UIKit

protocol ViewHolderable {
    func place(in view: UIView)
    func configureConstraints(for view: UIView)
}
