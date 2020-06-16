import UIKit

extension UIControl {
    func tap() {
        self.sendActions(for: .touchUpInside)
    }
}
