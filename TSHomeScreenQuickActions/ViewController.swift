//
//  ViewController.swift
//  TSHomeScreenQuickActions
//
//  Created by Thomas Sillmann on 13.04.18.
//  Copyright © 2018 Thomas Sillmann. All rights reserved.
//

import UIKit

// MARK: - ViewController

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    var printInfoText: String = "" {
        didSet {
            printInfoLabel.text = printInfoText
        }
    }
    
    @IBOutlet private weak var printInfoLabel: UILabel!
    
}
