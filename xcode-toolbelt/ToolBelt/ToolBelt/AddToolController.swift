//
//  addToolController.swift
//  ToolBelt
//
//  Created by Afaan on 5/14/16.
//  Copyright © 2016 teamToolBelt. All rights reserved.
//

import UIKit

class AddToolController: UIViewController {
    
    // Outlets
    
    @IBOutlet weak var addToolTitle: UITextField!
    
    
    @IBOutlet weak var addToolDescription: UITextField!
    
    
    @IBOutlet weak var addToolSubmitButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
