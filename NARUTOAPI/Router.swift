//
//  Router.swift
//  NARUTOAPI
//
//  Created by 井本智博 on 2024/05/26.
//

import UIKit

final class Router {
    static let shared = Router()
    private init() {}
    var window: UIWindow?

    func showRoot(scene: UIWindowScene) {
        let vc = ViewController()
        let window = UIWindow(windowScene: scene)
        window.rootViewController = vc
        window.makeKeyAndVisible()
        self.window = window
    }

    private func show(from: UIViewController, to: UIViewController, completion: (()-> Void)? = nil) {
        if let nav = from.navigationController {
            nav.pushViewController(to, animated: true)
            completion?()
        } else {
            from.present(to, animated: true, completion: completion)
        }
    }
}
