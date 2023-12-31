//
//  SceneDelegate.swift
//  Swift_02
//
//  Created by Pavel iPro on 14.07.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        let myCont = UINavigationController(rootViewController: ViewController())
        window = UIWindow(windowScene: scene)
        window?.rootViewController = myCont
        window?.makeKeyAndVisible()
    }
}
