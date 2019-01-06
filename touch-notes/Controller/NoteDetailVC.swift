//
//  NoteDetailVC.swift
//  touch-notes
//
//  Created by Sain-R Edwards on 1/4/19.
//  Copyright © 2019 Swift Koding 4 Everyone. All rights reserved.
//

import UIKit

class NoteDetailVC: UIViewController {
    
    @IBOutlet weak var noteTextView: UITextView!
    
    // An instance of note to display
    var note: Note!
    
    // An index of note so we know which one to lock
    var index: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        noteTextView.text = note.message
    }
    
    @IBAction func lockNoteButtonPressed(_ sender: Any) {
        notesArray[index].lockStatus = lockStatusFlipper(note.lockStatus)
        navigationController?.popViewController(animated: true)
    }
    
}
