//
//  Model.swift
//  ReadingList
//
//  Created by Elif Dede on 2/25/24.
//

import Foundation
import UIKit

struct Book {
    var title: String
    var summary: String
    var coverImage: UIImage?
    
    init(_ title: String, _ summary: String, _ coverImage: UIImage?) {
        self.title = title
        self.summary = summary
        self.coverImage = coverImage
    }
    
}
