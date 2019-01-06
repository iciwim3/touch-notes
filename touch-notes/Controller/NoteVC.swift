//
//  NoteVC.swift
//  touch-notes
//
//  Created by Sain-R Edwards on 1/4/19.
//  Copyright © 2019 Swift Koding 4 Everyone. All rights reserved.
//

import UIKit

class NoteVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    // Function that is called when we tap on a cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // pass note and present view controller
        pushNoteFor(indexPath: indexPath)
    }
    
    // Allows the 'didSelectRowAt' function to work properly in this case. We pass a note and an indexPath.
    func pushNoteFor(indexPath: IndexPath) {
        guard let noteDetailVC = storyboard?.instantiateViewController(withIdentifier: "NoteDetailVC") as? NoteDetailVC else { return }
        noteDetailVC.note = notesArray[indexPath.row]
        noteDetailVC.index = indexPath.row
        navigationController?.pushViewController(noteDetailVC, animated: true)
    }
}

extension NoteVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell", for: indexPath) as? NoteCell else { return UITableViewCell() }
        let note = notesArray[indexPath.row]
        cell.configureCell(note: note)
        return cell
    }
    
}

