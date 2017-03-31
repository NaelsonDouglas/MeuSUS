

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cellImageView: UIImageView!
    
    @IBOutlet weak var estadoLabel: UILabel!
    var image: UIImage? {
        get {
            return cellImageView.image
        }
        
        set {
            cellImageView?.image = newValue
        }
    }
    
    
    func viewDidLoad(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(PhotosCollectionViewController.imageTapped(gesture:)))
        
        
        cellImageView.addGestureRecognizer(tapGesture)
        
        cellImageView.isUserInteractionEnabled = true
    }

}
