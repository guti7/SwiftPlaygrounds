import UIKit

public class WWDCMasterViewController: UITableViewController {
    
    // Properties
    var reasons = ["the labs are awesome!", "learning new topics at the sessions", "the awesome people there", "watching the keynote live", "Getting to snap a pic with familiar faces/Jony Ive, Tim Cook"]
    
    // app lifecycle
    override public func viewDidLoad() {
        title = "Why I should attend WWDC"
    }
    
    // Number of rows for tableView
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int {
        return reasons.count
    }
    
    // cell for row
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell!
        
        cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
            cell?.accessoryType = .disclosureIndicator
        }
        
        // configure cell
        let reason = reasons[indexPath.row]
        cell.detailTextLabel?.text = "I want to attend because \(reason)"
        cell.textLabel?.text = "Reason #\(indexPath.row + 1)"
        
        return cell
    }
    
    // select a row
    override public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let text = tableView.cellForRow(at: indexPath)?.detailTextLabel?.text else { return }
        
        let detail = WWDCDetailViewController()
        detail.message = text
        navigationController?.pushViewController(detail, animated: true)
    }
    
}
