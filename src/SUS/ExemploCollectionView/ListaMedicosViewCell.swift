
import UIKit

class ListaMedicosViewCell: UITableViewCell {
    @IBOutlet weak var medicoImage: UIImageView!
    @IBOutlet weak var nomeMedicoLabel: UILabel!
    @IBOutlet weak var especialidadeMedico: UILabel!
    @IBOutlet weak var dataAtendimentoLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
