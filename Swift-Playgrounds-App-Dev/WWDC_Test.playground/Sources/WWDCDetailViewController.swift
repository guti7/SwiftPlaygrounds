import UIKit

public class WWDCDetailViewController: UIViewController {
    // Properties
    // Tracks dynamic effects over time
    var animator: UIDynamicAnimator?
    
    var message = ""
    
    // Load the view
    override public func loadView() {
        title = "Please let me go!"
        view = UIView()
        view.backgroundColor = UIColor.white
    }
    
    // Views are set
    override public func viewDidLayoutSubviews() {
        guard animator == nil else { return }
        
        // Split message into words array
        let words = message.components(separatedBy: " ")
        
        // Create array to hold the words' labels
        var labels = [UILabel]()
        
        // Create the labels for each word
        for (index, word) in words.enumerated() {
            let label = UILabel()
            label.font = UIFont.preferredFont(forTextStyle: .title1)
            
            // position labels
            label.center = CGPoint(x: view.frame.midX, y: 50 + CGFloat(20 * index))
            
            label.text = word
            label.sizeToFit()
            view.addSubview(label)
            
            labels.append(label)
        }
        
        // Add gravity behaviour to all labels
        let gravity = UIGravityBehavior(items: labels)
        animator = UIDynamicAnimator(referenceView: view)
        animator?.addBehavior(gravity)
        
        // Add collisions among labels
        let collisions = UICollisionBehavior(items: labels)
        // Give boundaries for collisions
        collisions.translatesReferenceBoundsIntoBoundary = true
        animator?.addBehavior(collisions)
    }
    
}
