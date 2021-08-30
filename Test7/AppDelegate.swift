//
//  AppDelegate.swift
//  Test7
//
//  Created by liuyaozong on 2021/8/28.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let navc = UINavigationController(rootViewController: ViewController())
        window?.rootViewController = navc
        window?.makeKeyAndVisible()
        return true
    }




}

