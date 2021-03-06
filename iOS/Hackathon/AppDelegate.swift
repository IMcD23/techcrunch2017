//
//  AppDelegate.swift
//  Hackathon
//
//  Created by Ian McDowell on 9/16/17.
//  Copyright © 2017 Hackathon. All rights reserved.
//

import UIKit
import CoreLocation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var hasActiveSession: Bool = false

    var whereMyCarAtDoe: CLLocation = CLLocation(latitude: 37.7756430, longitude: -122.3867430)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        if let window = window {
            window.backgroundColor = UIColor.white
            self.updateRootViewController()
            window.makeKeyAndVisible()
        }
        return true
    }
    
    func updateRootViewController() {
        let storyboard = UIStoryboard(name: "main", bundle: nil)
        if let window = window {
            if hasActiveSession{
                window.rootViewController = storyboard.instantiateViewController(withIdentifier: "activeParking")
            } else {
                window.rootViewController = storyboard.instantiateViewController(withIdentifier: "MainScreen")
            }
        }
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
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

