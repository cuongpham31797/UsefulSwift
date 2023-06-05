//
//  BaseNibView.swift
//  UsefulSwift
//
//  Created by Cuong Pham on 05/06/2023.
//

import Foundation
import UIKit

class BaseNibView: UIView {
    private var contentView: UIView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func loadNibFile(nibName: String) -> UIView {
        let bundle: Bundle = Bundle(for: type(of: self))
        guard let contentView: UIView = bundle.loadNibNamed(nibName,
                                                            owner: self,
                                                            options: nil)!.first as? UIView else {
            return UIView(frame: frame)
        }
        return contentView
    }
}

// MARK: - Public function
extension BaseNibView {
    func loadViewFromNibFile(_ nibName: String) {
        backgroundColor = .clear
        if contentView == nil {
            contentView = loadNibFile(nibName: nibName)
            contentView?.frame = bounds
            contentView?.autoresizingMask = [.flexibleHeight, .flexibleWidth]
            addSubview(contentView!)
        }
    }
}
