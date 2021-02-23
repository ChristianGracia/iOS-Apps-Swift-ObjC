//
//  DefinitionViewController.swift
//  ListApp
//
//  Created by Christian Gracia on 2/22/21.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var iconLabel: UILabel!
    @IBOutlet weak var iconDefinitionLabel: UILabel!
    
    var icon = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iconLabel.text = icon
        
  

    }

}
