//
//  AppDelegate.swift
//  MemoApp
//
//  Created by 豊岡正紘 on 2019/08/03.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var lastText: String?

    // 起動時に呼ばれる
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // アプリに保存されている最後の入力内容を読み込み、lastTextに格納します。
        let userDefaults = UserDefaults.standard
        lastText = userDefaults.object(forKey: "lastText") as? String
        
        return true
    }

    //ホームボタンが押された時に呼ばれる
    func applicationWillResignActive(_ application: UIApplication) {
        
        // lastTextに格納されている入力内容をアプリに保存します。
        let userDefaults = UserDefaults.standard
        userDefaults.set(lastText, forKey: "lastText")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

