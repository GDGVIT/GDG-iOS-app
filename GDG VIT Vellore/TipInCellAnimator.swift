//
//  TipInCellAnimator.swift
//  GDG VIT Vellore
//
//  Created by Ashwini Purohit on 31/03/17.
//  Copyright © 2017 GDG. All rights reserved.
//

import UIKit

class TipInCellAnimator {
    // placeholder for things to come -- only fades in for now
    class func animate(cell:UITableViewCell) {
        let view = cell.contentView
        view.layer.opacity = 0.1
        UIView.animate(withDuration: 1.4) {
            view.layer.opacity = 1
        }
    }
}
