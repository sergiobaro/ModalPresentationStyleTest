import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = navigationController?.title
        self.navigationItem.rightBarButtonItem = .init(title: "Close", style: .plain, target: self, action: #selector(didTapClose))
    }
    
    @objc private func didTapClose() {
        self.dismiss(animated: true)
    }
}
