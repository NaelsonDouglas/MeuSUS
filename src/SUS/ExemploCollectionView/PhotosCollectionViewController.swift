

import UIKit

class PhotosCollectionViewController: UICollectionViewController {
    
        var locais = Local.getList()
    
    private struct Storyboard {
        
        static let cellIdentifier = "LocalCellIdentifier"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
   
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func imageTapped(gesture: UIGestureRecognizer) {
        
        
        
        
       
        
        self.performSegue(withIdentifier: "menuToEstado", sender: self)
        
        
        
        print("image almost taped")
        
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
               return locais.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Storyboard.cellIdentifier, for: indexPath)
        
        
        if let imageCell = cell as? ImageCollectionViewCell {
            
            let local = locais[indexPath.row]
            imageCell.image = UIImage(named: local.foto)
            imageCell.estadoLabel.text = local.nome
            
            
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(PhotosCollectionViewController.imageTapped(gesture:)))
            
            
            imageCell.addGestureRecognizer(tapGesture)
            
            imageCell.isUserInteractionEnabled = true
        }
        
        
        
        
        return cell
    }
}


extension PhotosCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    private var sectionInsets: UIEdgeInsets {
        return UIEdgeInsets(
            top: 10.0,
            left: 10.0,
            bottom: 20.0,
            right: 10.0
        )
    }
    
   
    private var itemsPerRow: CGFloat {
        return 4
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
}
