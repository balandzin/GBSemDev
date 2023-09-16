//
//  TableTableViewController.swift
//  sem_1_task
//
//  Created by Антон Баландин on 16.09.23.
//

import UIKit

final class TableTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        CustomTableViewCell()
    }

}
