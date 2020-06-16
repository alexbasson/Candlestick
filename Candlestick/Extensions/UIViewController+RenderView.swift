import UIKit

extension UIViewController {
    func renderView(inNavController: Bool = false) {
        if let window = UIApplication.shared.windows.filter({ $0.isKeyWindow }).first {
            if (inNavController) {
                let navController = UINavigationController(rootViewController: self)
                window.rootViewController = navController
            } else {
                window.rootViewController = self
            }
            RunLoop.main.run(until: Date())
        }
    }

    func renderViewInNavController() {
        self.renderView(inNavController: true)
    }
}
