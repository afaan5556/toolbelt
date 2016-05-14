//
//  Tool.swift
//  ToolBelt
//
//  Created by Afaan on 5/14/16.
//  Copyright © 2016 teamToolBelt. All rights reserved.
//

import UIKit


class Tool {
    
    var title: String
    var image: UIImage?
    var description: String
    
    init(title: String, description: String, image: UIImage?) {
        
        
        self.title = title
        self.image = image
        self.description = description
    }
    
    
}
