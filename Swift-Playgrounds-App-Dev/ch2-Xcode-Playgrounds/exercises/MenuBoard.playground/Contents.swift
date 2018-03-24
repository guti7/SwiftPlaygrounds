/*:
 # Menu Board
 A menu to print to the live view
*/
import UIKit
import PlaygroundSupport

class MenuBoard : UIViewController {
    
    var textView = UITextView()
    var menuText = "Company Socks\n"
    
    func addViews() {
        textView = UITextView(frame: view.frame)
        textView.font = UIFont(name: "Chalkduster", size: 22.0)
        textView.textColor = UIColor.yellow
        textView.backgroundColor = UIColor(white: 0.25, alpha: 0.9)
        textView.isEditable = false
        
        textView.text = menuText
        view.addSubview(textView)
    }
    
    func print(_ newText: String) {
        menuText += newText + "\n"
        textView.text = menuText
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addViews()
    }
}

let menuBoard = MenuBoard()
menuBoard.print("Red Socks Special")
menuBoard.print("Blue Socks Special")

let list = ["Green", "Yellow", "Pink", "Purple", "Black"]
let sizes = ["M", "L", "XL", "S", "XS"]
for index in 0..<list.count {
    menuBoard.print("\(list[index])\t\t\t\(sizes[index])")
}

PlaygroundPage.current.liveView = menuBoard






