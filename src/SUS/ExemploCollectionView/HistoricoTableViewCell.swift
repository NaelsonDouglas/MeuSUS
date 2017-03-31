

import UIKit

class HistoricoTableViewCell: UITableViewCell {

    @IBOutlet weak var medicoImage: UIImageView!
    
    @IBOutlet weak var nomeLabel: UILabel!
   
    @IBOutlet weak var especialidadeLabel: UILabel!
    
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
