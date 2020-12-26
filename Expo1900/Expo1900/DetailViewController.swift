import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var entryImageView: UIImageView!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
    }
    
    private func setData() {
        guard let entry = entry else {
            return
        }
        self.navigationItem.title = entry.name
        entryImageView.image = entry.image
        descriptionTextView.text = entry.description
    }
}
