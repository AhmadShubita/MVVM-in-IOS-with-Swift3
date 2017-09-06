//
//  ShadowView.swift
//  MVVM Test
//
//  Created by Ahmad shubita on 8/30/17.
//  Copyright © 2017 universe. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(red: SHADOW_GRY, green: SHADOW_GRY, blue: SHADOW_GRY, alpha: SHADOW_GRY).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        layer.cornerRadius = 2.0
        
        
    }
    
    
}
