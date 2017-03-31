

import UIKit

class ConsultaTableViewCell: UITableViewCell {

    @IBOutlet weak var medicoImage: UIImageView!
    @IBOutlet weak var nomeMedico: UILabel!
    @IBOutlet weak var especialidadeMedico: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
