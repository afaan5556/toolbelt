//
//  ToolTableViewController.swift
//  ToolBelt
//
//  Created by Afaan on 5/14/16.
//  Copyright © 2016 teamToolBelt. All rights reserved.
//

import UIKit

class ToolTableViewController: UITableViewController {
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSampleTools()
        
        // Do any additional setup after loading the view.
    }
    
    // MARk: Properties
    
    var tools = [Tool]()
    
    func loadSampleTools () {
        
        let photo1 = UIImage(named: "drill")
        let tool1 = Tool(title: "Drill", description: "Portable power drill with bits", image: photo1)
        let photo2 = UIImage(named: "table-saw")
        let tool2 = Tool(title: "Saw", description: "Stationary table saw in my garage", image: photo2)
        
        tools += [tool1, tool2]
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tools.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "ToolTableViewCell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ToolTableViewCell
        
        let tool = tools[indexPath.row]
        
        cell.toolTitle.text = tool.title
        cell.toolDescription.text = tool.description
        cell.toolImage.image = tool.image
        
        
        return cell
    }
    


}
