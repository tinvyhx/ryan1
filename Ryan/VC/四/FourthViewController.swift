//
//  FourthViewController.swift
//  Ryan
//
//  Created by 谭魏 on 15/11/25.
//  Copyright © 2015年 victor. All rights reserved.
//

import UIKit

class FourthViewController: BaseViewController,UMSocialUIDelegate {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.tabBarItem=UITabBarItem(title: "分享", image: UIImage(named: "tab_4"), selectedImage: UIImage(named: "tab_4_selected"))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UMSocialSnsService.presentSnsController(self, appKey: UMeng_KEY, shareText: "hello", shareImage: UIImage(named: "tab_1"), shareToSnsNames: [UMShareToSms,UMShareToEmail], delegate: self)
        
        self.tabBarController?.selectedIndex=0
    }
    
    //MARK: UMeng

    func didCloseUIViewController(fromViewControllerType: UMSViewControllerType) {
        
    }
    
    //MARK: Life
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
