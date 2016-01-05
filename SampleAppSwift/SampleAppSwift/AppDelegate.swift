//
//  AppDelegate.swift
//  SampleAppSwift
//
//  Created by Timur Umayev on 1/4/16.
//  Copyright © 2016 dreamfactory. All rights reserved.
//

import UIKit

// change these values to match your instance

// API key for your app goes here, see apps tab in admin console
let kApiKey = "47f611bfd5da6bc33e01a473142ea048409adb970839c95fa32af28e4c002e79"
let kSessionTokenKey = "SessionToken"
let kBaseInstanceUrl = "https://df-test-gm.enterprise.dreamfactory.com/api/v2"
let kDbServiceName = "db/_table"
let kUserEmail = "UserEmail"
let kPassword = "UserPassword"
let kContainerName = "profile_images"

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var globalToolBar: CustomNavBar!


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        // Build persistent navigation bar
        let tb = CustomNavBar()
        tb.barStyle = .Default
        tb.sizeToFit()
        tb.frame = CGRectMake(tb.frame.origin.x, tb.frame.origin.y, tb.frame.size.width, 67)
        
        tb.buildLogo()
        tb.buildButtons()
        tb.reloadInputViews()
        
        window?.rootViewController?.view.addSubview(tb)
        globalToolBar = tb
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}

extension UIViewController {
    var navBar: CustomNavBar {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        return appDelegate.globalToolBar
    }
}

