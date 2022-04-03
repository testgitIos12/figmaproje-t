//
//  SafeArea.swift
//  figmaprojekt
//
//  Created by Samir Maksutov on 3/4/22.
//

import Foundation
import UIKit
import SnapKit
import CommonCrypto

extension UIView {
    var safeArea: ConstraintBasicAttributesDSL {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.snp
        } else {
            return self.snp
        }
    }
    var safeAreaEdgesInset: UIEdgeInsets {
        if #available(iOS 11.0, *) {
            return self.safeAreaInsets
        } else {
            return UIEdgeInsets()
        }
    }
}
