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
//        textView = UITextView(frame: view.frame)
        let rectFrame = CGRect(x: 0, y: 200, width: 355, height: 268)
        textView = UITextView(frame: rectFrame)
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
menuBoard.view.frame // same as `view.frame`
menuBoard.view.subviews[0].frame
let list = ["Green", "Yellow", "Pink", "Purple", "Black"]
let sizes = ["M", "L", "XL", "S", "XS"]
for index in 0..<list.count {
    menuBoard.print("\(list[index])\t\t\t\(sizes[index])")
}

PlaygroundPage.current.liveView = menuBoard






