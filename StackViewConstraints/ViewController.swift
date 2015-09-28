//
//  ViewController.swift
//  StackViewConstraints
//
//  Created by Bjarte Skjørestad on 28/09/15.
//  Copyright © 2015 Time and Date AS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainStackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        addElement("Name", description: "Saint Petersburg")
        addElement("Native name", description: "Санкт-Петербург")
        addElement("Country", description: "Russia")
        addElement("Federal district", description: "Northwestern")
        addElement("Economic region", description: "Northwestern")
        addElement("Established", description: "May 27, 1703")
    }
    
    func addElement(title:String, description:String) {
        
        let labelTitle = UILabel()
        labelTitle.backgroundColor = UIColor.redColor()
        labelTitle.font = UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)
        labelTitle.text = title
        labelTitle.textColor = UIColor.whiteColor()
        
        let labelDescription = UILabel()
        labelDescription.backgroundColor = UIColor.blueColor()
        labelDescription.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        labelDescription.text = description
        labelDescription.textColor = UIColor.whiteColor()
        
        let stackHolder = MyStackView()
        stackHolder.axis = .Vertical
        stackHolder.distribution = .FillEqually
        
        stackHolder.addArrangedSubview(labelTitle)
        stackHolder.addArrangedSubview(labelDescription)
        stackHolder.spacing = 8
        
        mainStackView.addArrangedSubview(stackHolder)
    }
}

