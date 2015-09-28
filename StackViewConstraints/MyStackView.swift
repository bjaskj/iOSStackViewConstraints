//
//  MyStackView.swift
//  StackViewConstraints
//
//  Created by Bjarte Skjørestad on 28/09/15.
//  Copyright © 2015 Time and Date AS. All rights reserved.
//

import UIKit

class MyStackView: UIStackView {
    override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        if traitCollection.horizontalSizeClass == UIUserInterfaceSizeClass.Regular {
            axis = UILayoutConstraintAxis.Horizontal
        } else {
            axis = UILayoutConstraintAxis.Vertical
        }
    }
}
