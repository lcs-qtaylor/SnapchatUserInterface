//
//  Picker.swift
//  SnapchatUserInterface
//
//  Created by Quin Taylor on 2022-11-17.
//

import UIKit

enum Picker {
    enum Source: String {
        case library, camera
    }
    
    static func checkPermissions() -> Bool {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            return true
        } else {
            return false
        }
    }
}
