import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelForGameName: UILabel!
    
    @IBOutlet weak var labelToSelectTheSuit: UILabel!
    
    @IBOutlet weak var changeSuit: UISegmentedControl!
    
    
    @IBOutlet weak var labelForSteppe: UILabel!
    
    @IBOutlet weak var stepperItself: UIStepper!
    
   
    @IBOutlet weak var cardDisplayArea: UIView!
    
    
    @IBOutlet weak var cardValueLabel: UILabel!
    
    
    @IBOutlet weak var suitLabel: UILabel!
    
    var cardValue: Int = 2 {
        didSet {
            switch stepperItself.value {
            case 1.0:
                cardValueLabel.text = "A"
            case 11.0:
                cardValueLabel.text = "J"
            case 12.0:
                cardValueLabel.text = "👸"
            case 13.0:
                cardValueLabel.text = "🤴"
            default:
                cardValueLabel.text = String(cardValue)
            }
        }
    }
    
    var suitView: Int = 0 {
        didSet {
            switch changeSuit.selectedSegmentIndex {
            case 0:
                suitLabel.text = "♦️"
            case 1:
                suitLabel.text = "♥️"
            case 2:
                suitLabel.text = "♣️"
            case 3:
                suitLabel.text = "♠️"
            default:
                suitLabel.text = "💣"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepperItself.value = 2.0
        cardDisplayArea.layer.borderColor = UIColor.black.cgColor
        cardDisplayArea.layer.borderWidth = 1.0
    }
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        suitView = sender.selectedSegmentIndex
    }
    
    @IBAction func actionToSelectValue(_ sender: UIStepper) {
        cardValue = Int(sender.value)
    }
    
    
    
}

