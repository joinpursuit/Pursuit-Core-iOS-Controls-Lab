import UIKit

class ViewController: UIViewController {

    // MARK: Outlets, variables and Constants
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var segmentedControlLabel: UILabel!
    @IBOutlet weak var segmentedControl1: UISegmentedControl!
    
    @IBOutlet weak var segmentedControl2: UISegmentedControl!
    @IBOutlet weak var stepperOutlet: UIStepper!
    @IBOutlet weak var topLeftLabelOutlet: UILabel!
    @IBOutlet weak var midLabelOutlet: UILabel!
    @IBOutlet weak var bottomLeftOutlet: UILabel!
    var suit: Suit = .heart
    var generator = CardGenerator()
    
    // MARK: Methods of ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        generator.stepperSetUp(stepperOutlet)
        
        segmentedControl1.setImage(UIImage(systemName: "suit.heart"),forSegmentAt: 0)
        segmentedControl1.setImage(UIImage(systemName: "suit.spade"),forSegmentAt: 1)
        segmentedControl2.setImage(UIImage(systemName: "suit.club"),forSegmentAt: 0)
        segmentedControl2.setImage(UIImage(systemName: "suit.diamond"),forSegmentAt: 1)
        
        segmentedControlLabel.text = "Select Suit"
        stepperLabel.text = "Choose Value"
        titleLabel.text = "Card Generator"
        topLeftLabelOutlet.text = generator.printProperPicture(stepperOutlet, suit)
        midLabelOutlet.text = generator.printProperPicture(stepperOutlet, suit)
        bottomLeftOutlet.text = generator.printProperPicture(stepperOutlet, suit)
    }
    
    
    // MARK: Actions of ViewController
    
    @IBAction func segmentedControlToggle(_ sender: UISegmentedControl){
        suit = generator.getSuit(sender)
        topLeftLabelOutlet.text = generator.printProperPicture(stepperOutlet, suit)
        midLabelOutlet.text = generator.printProperPicture(stepperOutlet, suit)
        bottomLeftOutlet.text = generator.printProperPicture(stepperOutlet, suit)
    }
    
    @IBAction func stepperToggle(_ sender: UIStepper){
        topLeftLabelOutlet.text = generator.printProperPicture(stepperOutlet, suit)
        midLabelOutlet.text = generator.printProperPicture(stepperOutlet, suit)
        bottomLeftOutlet.text = generator.printProperPicture(stepperOutlet, suit)
    }
    
}

