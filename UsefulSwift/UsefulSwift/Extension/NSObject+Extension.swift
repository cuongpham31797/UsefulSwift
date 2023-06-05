//
//  NSObject+Extension.swift
//  UsefulSwift
//
//  Created by Cuong Pham on 05/06/2023.
//

import Foundation

extension NSObject {
    /// get string base on class name
    /// ```
    ///  ViewController.className -> "ViewController"
    /// ```
    class var className: String {
        return String(describing: self)
    }
}
