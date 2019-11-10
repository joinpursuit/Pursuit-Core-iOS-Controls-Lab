import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var suitsegmentedController: UISegmentedControl!
    
    @IBOutlet weak var cardValueStepper: UIStepper!
    
    
    @IBOutlet weak var cardImageView: UIImageView!
    
    var cardValueHearts: Double = 1.0 {
        didSet {
            switch cardValueStepper.value {
            case 1.0:
                cardImageView.image = #imageLiteral(resourceName: "2H")
            case 2.0:
                cardImageView.image = #imageLiteral(resourceName: "3H")
            case 3.0:
                cardImageView.image = #imageLiteral(resourceName: "4H")
            case 4.0:
                cardImageView.image = #imageLiteral(resourceName: "5H.png")
                case 5.0:
                cardImageView.image = #imageLiteral(resourceName: "6H")
                case 6.0:
                cardImageView.image = #imageLiteral(resourceName: "7H")
                case 7.0:
                cardImageView.image = #imageLiteral(resourceName: "8H")
                case 8.0:
                cardImageView.image = #imageLiteral(resourceName: "9H.png")
                case 9.0:
                cardImageView.image = #imageLiteral(resourceName: "10H")
                case 10.0:
                cardImageView.image = #imageLiteral(resourceName: "JH")
                case 11.0:
                cardImageView.image = #imageLiteral(resourceName: "QH")
                case 12.0:
                cardImageView.image = #imageLiteral(resourceName: "KH")
                case 13.0:
                cardImageView.image = #imageLiteral(resourceName: "AH")
            default:
                cardImageView.image = #imageLiteral(resourceName: "AH")
            }
        }
    }
    var cardValueDiamonds: Double = 1.0 {
        didSet {
           switch cardValueStepper.value {
            case 1.0:
                cardImageView.image = #imageLiteral(resourceName: "2D")
            case 2.0:
                    cardImageView.image = #imageLiteral(resourceName: "3D")
                case 3.0:
                    cardImageView.image = #imageLiteral(resourceName: "4D.png")
                case 4.0:
                    cardImageView.image = #imageLiteral(resourceName: "5D")
                    case 5.0:
                    cardImageView.image = #imageLiteral(resourceName: "6D")
                    case 6.0:
                    cardImageView.image = #imageLiteral(resourceName: "7D")
                    case 7.0:
                    cardImageView.image = #imageLiteral(resourceName: "8D")
                    case 8.0:
                    cardImageView.image = #imageLiteral(resourceName: "9D")
                    case 9.0:
                    cardImageView.image = #imageLiteral(resourceName: "10D")
                    case 10.0:
                    cardImageView.image = #imageLiteral(resourceName: "JD")
                    case 11.0:
                    cardImageView.image = #imageLiteral(resourceName: "QD")
                    case 12.0:
                    cardImageView.image = #imageLiteral(resourceName: "KD")
                    case 13.0:
                    cardImageView.image = #imageLiteral(resourceName: "AD")
                default:
                    cardImageView.image = #imageLiteral(resourceName: "AH")
                }
        }
    }
    
    var cardValueClubs: Double = 1.0 {
        didSet {
            switch cardValueStepper.value {
            case 1.0:
                cardImageView.image = #imageLiteral(resourceName: "2C")
                case 2.0:
                    cardImageView.image = #imageLiteral(resourceName: "3C")
                case 3.0:
                    cardImageView.image = #imageLiteral(resourceName: "4C")
                case 4.0:
                    cardImageView.image = #imageLiteral(resourceName: "5C")
                    case 5.0:
                    cardImageView.image = #imageLiteral(resourceName: "6C")
                    case 6.0:
                    cardImageView.image = #imageLiteral(resourceName: "7C")
                    case 7.0:
                    cardImageView.image = #imageLiteral(resourceName: "8C")
                    case 8.0:
                    cardImageView.image = #imageLiteral(resourceName: "9C")
                    case 9.0:
                    cardImageView.image = #imageLiteral(resourceName: "10C")
                    case 10.0:
                    cardImageView.image = #imageLiteral(resourceName: "JC")
                    case 11.0:
                    cardImageView.image = #imageLiteral(resourceName: "QC")
                    case 12.0:
                    cardImageView.image = #imageLiteral(resourceName: "KC")
                    case 13.0:
                    cardImageView.image = #imageLiteral(resourceName: "AC")
                default:
                    cardImageView.image = #imageLiteral(resourceName: "AH")
                }
        }
    }
    var cardValueSpades: Double = 1.0 {
        didSet {
            switch cardValueStepper.value {
            case 1.0:
                cardImageView.image = #imageLiteral(resourceName: "2S")
                case 2.0:
                    cardImageView.image = #imageLiteral(resourceName: "3S")
                case 3.0:
                    cardImageView.image = #imageLiteral(resourceName: "4S.png")
                case 4.0:
                    cardImageView.image = #imageLiteral(resourceName: "5S")
                    case 5.0:
                    cardImageView.image = #imageLiteral(resourceName: "6S")
                    case 6.0:
                    cardImageView.image = #imageLiteral(resourceName: "7S")
                    case 7.0:
                    cardImageView.image = #imageLiteral(resourceName: "8S")
                    case 8.0:
                    cardImageView.image = #imageLiteral(resourceName: "9S")
                    case 9.0:
                    cardImageView.image = #imageLiteral(resourceName: "10S")
                    case 10.0:
                    cardImageView.image = #imageLiteral(resourceName: "JC")
                    case 11.0:
                    cardImageView.image = #imageLiteral(resourceName: "QS")
                    case 12.0:
                    cardImageView.image = #imageLiteral(resourceName: "KS")
                    case 13.0:
                    cardImageView.image = #imageLiteral(resourceName: "AS")
                default:
                    cardImageView.image = #imageLiteral(resourceName: "AH")
                }
        }
    }
    var currentSegmentControl: Int = 1 {
        didSet {
            switch suitsegmentedController.selectedSegmentIndex {
            case 0:
                cardImageView.image = #imageLiteral(resourceName: "2D")
            case 1:
                cardImageView.image = #imageLiteral(resourceName: "2H")
            case 2:
                cardImageView.image = #imageLiteral(resourceName: "2C")
            case 3:
                cardImageView.image = #imageLiteral(resourceName: "2S")
            default:
                cardImageView.image = #imageLiteral(resourceName: "2H")
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepperControl()
        // Do any additional setup after loading the view.
    }
    
    func stepperControl() {
        cardValueStepper.minimumValue = 1.0
        cardValueStepper.maximumValue = 13.0
        cardValueStepper.stepValue = 1.0
        cardValueStepper.value = 1.0
    }
    
    
    @IBAction func segmentsdSuitChange(_ sender: UISegmentedControl) {
        currentSegmentControl = sender.selectedSegmentIndex
        cardValueStepper.value = 1.0
    }
    
    
    @IBAction func stepperCardValueChange(_ sender: UIStepper) {
        
        if suitsegmentedController.selectedSegmentIndex == 0 {
            cardValueDiamonds = sender.value
        } else if suitsegmentedController.selectedSegmentIndex == 1 {
            cardValueHearts = sender.value
        } else if suitsegmentedController.selectedSegmentIndex == 2 {
            cardValueClubs = sender.value
        } else if suitsegmentedController.selectedSegmentIndex == 3 {
            cardValueSpades = sender.value
                }
            }
            
        }
    
    


