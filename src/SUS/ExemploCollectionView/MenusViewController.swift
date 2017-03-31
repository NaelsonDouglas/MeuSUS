

import UIKit



class MenusViewController: UIViewController {
        struct Storyboard {
        static let cellIdentifier = "localCellIdentifier"
    }
    
    var locais: [Local] {
        get {
            return Local.getList()
        }
    }
    
    
    @IBOutlet weak var horizontalCollectionView: UICollectionView! {
        
        didSet {
            
            horizontalCollectionView.delegate = self
            horizontalCollectionView.dataSource  = self
        }
    }
}

extension MenusViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    private var itemsPerRow: CGFloat {
        return 4
    }
    
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return locais.count
    }
    
   
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Storyboard.cellIdentifier, for: indexPath)
        
        
        cell.layer.cornerRadius = 10.0
        cell.layer.masksToBounds = true
        
        
        if let localCell = cell as? LocalCollectionViewCell {
            
            let local = locais[indexPath.row]
            
           
            localCell.local = local
            localCell.localImageView.image = UIImage(named: local.foto)
            
            return localCell
        }
        
        
        return cell
    }
    
}


extension MenusViewController: UICollectionViewDelegateFlowLayout {
    
    private var sectionInsets: UIEdgeInsets {
        return UIEdgeInsets(top: 10.0, left: 10.0, bottom: 20.0, right: 10.0)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
                let padding = (sectionInsets.top + sectionInsets.bottom) * 2
        let heightForItem = collectionView.frame.height - (padding * 2)
        let widthForItem = (heightForItem * 4) / 3
        
        return CGSize(width: widthForItem, height: heightForItem)
    }
    
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
    
}
