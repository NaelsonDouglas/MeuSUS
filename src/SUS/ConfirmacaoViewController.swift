

import UIKit

class ConfirmacaoViewController: UIViewController {
    
    
    @IBOutlet weak var mediconomelabel: UILabel!
    
    @IBOutlet weak var medicoCRMLabel: UILabel!
    
    @IBOutlet weak var horarioLabel: UILabel!

    @IBOutlet weak var codigoLabel: UILabel!
    var medico: Medico?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mediconomelabel.text = medico?.nome
        medicoCRMLabel.text = medico?.crm
        horarioLabel.text = "Manhã"
        codigoLabel.text = String(arc4random()%100)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
 

}
