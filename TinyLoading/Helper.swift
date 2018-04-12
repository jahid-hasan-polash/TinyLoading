//
//  Helper.swift
//  TinyLoading
//
//  Created by Jahid Hasan Polash on 12/4/18.
//  Copyright © 2018 Jahid Hasan Polash. All rights reserved.
//

import UIKit

public enum IndicatorStyle {
    case center, top, bottom
}

public enum AppearanceType {
    case None, FromLeft, FromRight, FromTop, FromBottom, CrossDisolve, Default
}

public extension UIView {
    
    public func startLoading(indicatorPosition: IndicatorStyle = .center,
                             backgroundAlpha: CGFloat = 1,
                             indicatorStyle: UIActivityIndicatorViewStyle = .whiteLarge,
                             appearAnimationDuration: CGFloat = 0.2,
                             appearanceType: AppearanceType = .Default,
                             blurEffect: UIBlurEffect = UIBlurEffect(style: .dark))
    {
        let loadingView = LoadingView(frame: bounds, indicatorStyle: indicatorPosition)
        loadingView.tag = 105
        loadingView.blurView.alpha = backgroundAlpha
        loadingView.activityIndicator.activityIndicatorViewStyle = indicatorStyle
        loadingView.animationDuration = appearAnimationDuration
        loadingView.appearanceType = appearanceType
        loadingView.blurView.effect = blurEffect
        addSubview(loadingView)
        loadingView.startAnimating()
    }
    
    public func stopLoading() {
        if let loadingView = viewWithTag(105) as? LoadingView {
            //            loadingView.stopAnimating()
            loadingView.removeFromSuperview()
        }
        else {
            print("Not Found any loading View")
        }
    }
}

