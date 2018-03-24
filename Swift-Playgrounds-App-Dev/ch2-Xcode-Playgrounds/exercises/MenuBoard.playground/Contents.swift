/*:
 # Menu Board
 A menu to print to the live view
*/
import UIKit
import PlaygroundSupport

class MenuBoard : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
}

let menuBoard = MenuBoard()

PlaygroundPage.current.liveView = menuBoard
