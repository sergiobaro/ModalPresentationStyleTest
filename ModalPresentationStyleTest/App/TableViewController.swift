import UIKit

class TableViewController: UITableViewController {
    
    private let styles: [UIModalPresentationStyle] = [
        .fullScreen,
        .pageSheet,
        .formSheet,
        .currentContext,
        .custom,
        .overFullScreen,
        .overCurrentContext,
        .popover
    ]
    private let styleNames: [String] = [
        "fullScreen",
        "pageSheet",
        "formSheet",
        "currentContext",
        "custom",
        "overFullScreen",
        "overCurrentContext",
        "popover"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as? String
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.styles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = styleNames[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let navController = self.storyboard!.instantiateViewController(withIdentifier: "NavController")
        navController.modalPresentationStyle = self.styles[indexPath.row]
        navController.title = self.styleNames[indexPath.row]
        
        self.present(navController, animated: true)
    }
}

