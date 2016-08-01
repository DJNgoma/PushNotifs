//
//  AppDelegate.swift
//  PushNotifs
//
//  Created by Daliso Ngoma on 30/07/2016.
//  Copyright © 2016 Daliso Ngoma. All rights reserved.
//

import UIKit
// 1. Add Firebase and Configure
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        // 1. Add Firebase and Configure
        FIRApp.configure()
        
        // 2. Ask for push notifications. 
        let settings: UIUserNotificationSettings = UIUserNotificationSettings(forTypes: [.Alert, .Badge, .Sound], categories: nil)
        application.registerUserNotificationSettings(settings)
        application.registerForRemoteNotifications()
        
        // 3. Be sure to switch on the Push Notifications in the Target's Capabilities
        
        return true
    }
    
    func application(application: UIApplication, didReceiveRemoteNotification userInfo: [NSObject : AnyObject]) {
        
        // 4. Print out the contents of the message id from the GCM push notification.
        // Print message ID.
        print("Message ID: \(userInfo["gcm.message_id"]!)")
        
        // Printing full message
        print("%@", userInfo)
        
    }
    
}

