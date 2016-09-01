//
//  SKButtons.swift
//  SKPhotoBrowser
//
//  Created by 鈴木 啓司 on 2016/08/09.
//  Copyright © 2016年 suzuki_keishi. All rights reserved.
//

import Foundation

// helpers which often used
private let bundle = NSBundle(forClass: SKPhotoBrowser.self)

class SKButton: UIButton {
    var showFrame: CGRect!
    var hideFrame: CGRect!
    var insets: UIEdgeInsets {
        return UI_USER_INTERFACE_IDIOM() == .Phone
            ?  UIEdgeInsetsMake(15.25, 15.25, 15.25, 15.25) : UIEdgeInsetsMake(12, 12, 12, 12)
    }
    var size: CGSize = CGSize(width: 44, height: 44)
    var margin: CGFloat = 5
    
    var buttonTopOffset: CGFloat { return 5 }
    
    func setup(imageName: String) {
        backgroundColor = .clearColor()
        imageEdgeInsets = insets
//        clipsToBounds = true
        translatesAutoresizingMaskIntoConstraints = true
        autoresizingMask = [.FlexibleBottomMargin, .FlexibleLeftMargin, .FlexibleRightMargin, .FlexibleTopMargin]
        
        let image = UIImage(named: "SKPhotoBrowser.bundle/images/\(imageName)",
                            inBundle: bundle, compatibleWithTraitCollection: nil) ?? UIImage()
        setImage(image, forState: .Normal)
    }
    
    func updateFrame() {}
}

class SKCloseButton: SKButton {
    let imageName = "btn_common_close_wh"
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup(imageName)
        showFrame = CGRect(x: margin, y: buttonTopOffset, width: size.width, height: size.height)
        hideFrame = CGRect(x: margin, y: -20, width: size.width, height: size.height)
    }
    
    override func updateFrame() {
    }
}

class SKDeleteButton: SKButton {
    let imageName = "btn_common_delete_wh"
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup(imageName)
        showFrame = CGRect(x: SKMesurement.screenWidth - size.width, y: buttonTopOffset,
                                       width: size.width, height: size.height)
        hideFrame = CGRect(x: SKMesurement.screenWidth - size.width, y: -20,
                                       width: size.width, height: size.height)
    }
    
    override func updateFrame() {
    }
}
