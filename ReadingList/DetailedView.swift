//
//  DetailedView.swift
//  ReadingList
//
//  Created by Elif Dede on 2/25/24.
//

import UIKit

class DetailedView: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var bookLabel: UILabel!
    
    var bookSummary = ""
    var bookTitle = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        bookLabel.text = bookSummary
        titleLabel.text = bookTitle

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func returnClicked(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
