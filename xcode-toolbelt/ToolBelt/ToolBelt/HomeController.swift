//
//  HomeController.swift
//  ToolBelt
//
//  Created by Afaan on 5/14/16.
//  Copyright © 2016 teamToolBelt. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    // Outlets
    
    @IBOutlet weak var toolSearchBar: UISearchBar!
    
    
    @IBOutlet weak var myToolBelt: UIButton!
    
    
    @IBOutlet weak var myMessages: UIButton!
    
    
    @IBOutlet weak var myProfile: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

