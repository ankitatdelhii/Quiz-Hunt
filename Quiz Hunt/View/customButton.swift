//
//  customButton.swift
//  Quiz Hunt
//
//  Created by Ankit Saxena on 13/02/19.
//  Copyright © 2019 Ankit Saxena. All rights reserved.
//

import UIKit
@IBDesignable
class customButton: UIButton {
    
    @IBInspectable var borderWidth : CGFloat = 0 {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor : UIColor = UIColor.clear{
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }

}
