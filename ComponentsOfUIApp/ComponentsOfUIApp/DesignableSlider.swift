//
//  DesignableSlider.swift
//  ComponentsOfUIApp
//
//  Created by NT 2 on 25/01/23.
//

import UIKit

class DesignableSlider: UISlider {

    @IBInspectable var thambImage : UIImage? {
        didSet{
            setThumbImage(thambImage, for:.normal)
        }
    }
}
