//
//  NoteCell.swift
//  touch-notes
//
//  Created by Sain-R Edwards on 1/4/19.
//  Copyright © 2019 Swift Koding 4 Everyone. All rights reserved.
//

import UIKit

class NoteCell: UITableViewCell {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var lockImageView: UIImageView!
    
    func configureCell(note: Note) {
        if note.lockStatus == .locked {
            messageLabel.text = "This note is locked. Unlock to read."
            lockImageView.isHidden = false
        } else {
            messageLabel.text = note.message
            lockImageView.isHidden = true
        }
    }
}
