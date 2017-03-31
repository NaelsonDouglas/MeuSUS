

import UIKit

class LocalCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var localImageView: UIImageView!
    @IBOutlet weak var nomeDoLocalLabel: UILabel!
    
    
    var local: Local? {
        didSet {
            if let local = self.local {
                nomeDoLocalLabel?.text = local.nome
                localPicture = UIImage(named: local.nome)
            }
        }
    }
    
    var localPicture: UIImage? {
        get {
            return localImageView.image
        }
        
        set {
            localImageView?.image = newValue
        }
    }
    
}
