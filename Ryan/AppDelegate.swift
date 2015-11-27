//
//  AppDelegate.swift
//  Ryan
//
//  Created by 谭魏 on 15/11/25.
//  Copyright © 2015年 victor. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var tabBarController: UITabBarController!
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        UMSocialData.setAppKey(UMeng_KEY)
        UMSocialData.openLog(true)
        
        tabBarController = UITabBarController()
        tabBarController.viewControllers = [FirstViewController(),SecondViewController(),ThirdViewController()]
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        self.window?.rootViewController = tabBarController
        self.window?.backgroundColor = UIColor.whiteColor()
        self.window?.makeKeyAndVisible()
        return true
    }
}

