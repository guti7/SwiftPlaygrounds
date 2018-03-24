/*:
 # Menu Board
 A menu to print to the live view
*/
import UIKit
import PlaygroundSupport

class MenuBoard : UIViewController {
    
    var textView = UITextView()
    var menuText = "Company\n"
    
    func addViews() {
        textView = UITextView(frame: view.frame)
        textView.font = UIFont(name: "Chalkduster", size: 22.0)
        textView.textColor = UIColor.yellow
        textView.backgroundColor = UIColor(white: 0.25, alpha: 0.9)
        textView.isEditable = false
        
        textView.text = menuText
        view.addSubview(textView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addViews()
    }
}

let menuBoard = MenuBoard()

PlaygroundPage.current.liveView = menuBoard
