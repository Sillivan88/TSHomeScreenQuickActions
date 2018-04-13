//
//  AppDelegate.swift
//  TSHomeScreenQuickActions
//
//  Created by Thomas Sillmann on 13.04.18.
//  Copyright © 2018 Thomas Sillmann. All rights reserved.
//

import UIKit

// MARK: - AppDelegate

@UIApplicationMain
class AppDelegate: UIResponder {
    
    // MARK: - Properties
    
    var window: UIWindow?
    
    private lazy var rootViewController: ViewController = self.window?.rootViewController as! ViewController
    
    // MARK: - Methods
    
    private func createDynamicShortcutItems() {
        let dynamicShortcutItem = UIApplicationShortcutItem(type: ShortcutItemTypes.printDynamicType, localizedTitle: "Dynamic!")
        UIApplication.shared.shortcutItems = [dynamicShortcutItem]
    }
    
}

// MARK: - UIApplicationDelegate

extension AppDelegate: UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        createDynamicShortcutItems()
        return true
    }
    
    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        if shortcutItem.type == ShortcutItemTypes.printHelloWorldType {
            rootViewController.printInfoText = shortcutItem.localizedTitle
        } else if shortcutItem.type == ShortcutItemTypes.printDynamicType {
            rootViewController.printInfoText = shortcutItem.localizedTitle
        }
        completionHandler(true)
    }
    
}

// MARK: - ShortcutItemTypes

struct ShortcutItemTypes {
    
    // MARK: - Properties
    
    static let printDynamicType = "de.thomassillmann.TSHomeScreenQuickActions.printDynamic"
    
    static let printHelloWorldType = "de.thomassillmann.TSHomeScreenQuickActions.printHelloWorld"
    
}
