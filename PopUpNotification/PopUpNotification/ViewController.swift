//
//  ViewController.swift
//  PopUpNotification
//
//  Created by Daniele Rapali on 19/04/2017.
//  Copyright © 2017 Daniele Rapali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        _ = ShowNotify(uiView: self.view, notifyTitle: "Alert messagge for you", notifyMessage: "Hi User!! ther are a new notification for you 🤡")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    /*
     
     MARK : Show popup
     
     */
    
    func ShowNotify(uiView:UIView,notifyTitle:String,notifyMessage:String){
        
        
        let notifyView:NotifyPopUp = NotifyPopUp(frame: CGRect(x: 0, y: 16, width: 375, height: 78))
        notifyView.center.x = uiView.center.x
        
        notifyView.title.text = notifyTitle
        notifyView.message.text = notifyMessage
        
        uiView.addSubview(notifyView)
        
        
        
    }

}

