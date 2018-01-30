//
//  AppDelegate.swift
//  PageChange
//
//  Created by KaiChieh on 2018/1/29.
//  Copyright © 2018年 KaiChieh. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        print("載入APP")
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        print("APP即將進入背景")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("APP已經進入背景")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        print("APP即將回到前景")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        print("啟動APP,已經變成active")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        print("APP即將終止")
    }


}

