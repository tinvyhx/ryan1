//
//  SecondViewController.swift
//  Ryan
//
//  Created by 谭魏 on 15/11/25.
//  Copyright © 2015年 victor. All rights reserved.
//

import UIKit

class SecondViewController: WebViewController {
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.tabBarItem=UITabBarItem(title: "我的订单", image: UIImage(named: "tab_2"), selectedImage: UIImage(named: "tab_2_selected"))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        web_address = My_Order
        loadWeb()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
