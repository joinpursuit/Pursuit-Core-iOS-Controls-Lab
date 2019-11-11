import UIKit

class ViewController: UIViewController {

    //MARK:- Outlets and properties
    
    //controls
    @IBOutlet weak var suitSegmentedControl: UISegmentedControl!
    @IBOutlet weak var valueStepperControl: UIStepper!
    
    //card labels
    @IBOutlet var cardLabels: [UILabel]!
    
    var currentCardSuit = "♦️"
    var currentCardValue = "A"
    var cardSuit = ["♦️", "♥️", "♣️", "♠️"]
    var cardValues = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    
    //MARK:- View Controller Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureStepper()
        for cardLabel in cardLabels{
            cardLabel.text = "\(currentCardValue)\(currentCardSuit)"
        }
    }
    
    //helper function
    func configureStepper(){
        
        valueStepperControl.minimumValue = Double(cardValues.startIndex)
        valueStepperControl.maximumValue = Double(cardValues.count) - 1.0
        valueStepperControl.stepValue = 1.0
        
        //default start value
        valueStepperControl.value = 0.0
    }
    
    //MARK:- Actions and Methods
    
    @IBAction func suitSegmentedControllerChanged(_ sender: UISegmentedControl) {
        let currentCardSuitIndex = sender.selectedSegmentIndex
        currentCardSuit = cardSuit[currentCardSuitIndex]
        
        for cardLabel in cardLabels{
            cardLabel.text = "\(currentCardValue)\(currentCardSuit)"
        }
        
    }
    @IBAction func valueStepperControlChanged(_ sender: UIStepper) {
        let currentCardValueIndex = Int(sender.value)
        currentCardValue = cardValues[currentCardValueIndex]
        
        for cardLabel in cardLabels{
            cardLabel.text = "\(currentCardValue)\(currentCardSuit)"
        }
    }
    
}

