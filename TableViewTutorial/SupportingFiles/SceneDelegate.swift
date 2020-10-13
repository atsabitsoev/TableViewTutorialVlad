//
//  SceneDelegate.swift
//  TableViewTutorial
//
//  Created by Ацамаз Бицоев on 13.10.2020.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        //MARK:  Указываем, что первым экраном будет открываться MainController
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        window?.rootViewController = MainController()
        window?.makeKeyAndVisible()
    }


}

