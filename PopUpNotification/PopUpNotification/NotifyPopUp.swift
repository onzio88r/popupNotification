//
//  NotifyPopUp.swift
//  Movolytics
//
//  Created by Daniele Rapali on 19/04/2017.
//  Copyright © 2017 Daniele Rapali. All rights reserved.
//

import UIKit

class NotifyPopUp: UIView {

   @IBOutlet var mainContainer: UIView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    override init(frame: CGRect){
        super.init(frame: frame)
        initSubview()
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        initSubview()
        
    }
    
    private func initSubview(){
        let nib = UINib(nibName: "NotifyPopUp", bundle: nil)
        nib.instantiate(withOwner: self, options: nil)
        mainContainer.frame = self.bounds
        mainContainer.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        configView()
        
        addSubview(mainContainer)
        
        
    }
    
    private func configView(){
        
        let borderLayerTop = CAShapeLayer()
        borderLayerTop.fillColor = UIColor(red:255/255.0, green:255/255.0, blue:255/255.0, alpha: 0.9).cgColor
        let borderPathTop = UIBezierPath(roundedRect: topView.bounds,
                                      byRoundingCorners: [.topLeft, .topRight],
                                      cornerRadii: CGSize(width:10.0, height: 10.0))
        borderLayerTop.path = borderPathTop.cgPath
        
        mainContainer.layer.insertSublayer(borderLayerTop, at: 0)
        
        let borderLayerBottom = CAShapeLayer()
        borderLayerBottom.fillColor = UIColor(red:255/255.0, green:255/255.0, blue:255/255.0, alpha: 0.8).cgColor
        let borderPathBottom = UIBezierPath(roundedRect: bottomView.bounds,
                                      byRoundingCorners: [.bottomLeft, .bottomRight],
                                      cornerRadii: CGSize(width:10.0, height: 10.0))
        borderLayerBottom.position = CGPoint(x: 0, y: topView.frame.size.height)
        borderLayerBottom.path = borderPathBottom.cgPath
        
        mainContainer.layer.insertSublayer(borderLayerBottom, at: 0)
        
        
    }

}
