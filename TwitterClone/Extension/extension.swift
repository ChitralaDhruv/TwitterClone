//
//  extension.swift
//  TwitterClone
//
//  Created by Chitrala Dhruv on 02/03/22.
//

import UIKit

extension UITextField {
    func addBottomBorder(){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.size.height+40, width: UIScreen.main.bounds.width - 40, height: 1)
        bottomLine.backgroundColor = #colorLiteral(red: 0.2264783382, green: 0.2719595432, blue: 0.3096426427, alpha: 1)
        borderStyle = .none
        layer.addSublayer(bottomLine)
        
    }
}
