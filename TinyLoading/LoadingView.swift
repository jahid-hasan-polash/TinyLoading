//
//  LoadingView.swift
//  TinyLoading
//
//  Created by Jahid Hasan Polash on 12/4/18.
//  Copyright © 2018 Jahid Hasan Polash. All rights reserved.
//

import UIKit

class LoadingView: UIView {
    
    var blurView = UIVisualEffectView()
    var activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.whiteLarge)
    
    var animationDuration: CGFloat = 0.2
    var appearanceType: AppearanceType = .Default
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    public convenience init(frame: CGRect, indicatorPosition: IndicatorPosition) {
        self.init(frame: frame)
        setupView(indicatorPosition)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView(_ indicatorPosition: IndicatorPosition = .center) {
        blurView.frame = frame
        if indicatorPosition == .center {
            activityIndicator.center = center
        } else if indicatorPosition == .top {
            activityIndicator.center = CGPoint(x: frame.width/2, y: 24)
        } else {
            activityIndicator.center = CGPoint(x: frame.width/2, y: frame.height-24)
        }
        addSubview(blurView)
        addSubview(activityIndicator)
    }
    
    func startAnimating() {
        activityIndicator.startAnimating()
    }
    
    public override func didMoveToSuperview() {
        switch appearanceType {
        case .Default:
            self.transform = CGAffineTransform(scaleX: 0, y: 0)
            backToIdentity()
        case .FromTop:
            self.transform = CGAffineTransform(translationX: 0, y: -frame.height)
            backToIdentity()
        case .FromBottom:
            self.transform = CGAffineTransform(translationX: 0, y: frame.height)
            backToIdentity()
        case .FromLeft:
            self.transform = CGAffineTransform(translationX: -frame.width, y: 0)
            backToIdentity()
        case .FromRight:
            self.transform = CGAffineTransform(translationX: frame.width, y: 0)
            backToIdentity()
        case .CrossDisolve:
            self.alpha = 0
            UIView.animate(withDuration: TimeInterval(animationDuration)) {
                self.alpha = 1
            }
        default:
            break
        }
    }
    
    func backToIdentity() {
        UIView.animate(withDuration: TimeInterval(animationDuration)) {
            self.transform = .identity
        }
    }
    
    //    public func stopAnimating() {
    //        activityIndicator.stopAnimating()
    //        activityIndicator.removeFromSuperview()
    //        blurView.removeFromSuperview()
    //    }
    
    public override func layoutSubviews() {
        layoutIfNeeded()
        layer.masksToBounds = true
        clipsToBounds = true
    }
}
