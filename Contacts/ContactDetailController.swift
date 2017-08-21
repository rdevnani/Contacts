//
//  ContactDetailController.swift
//  Contacts
//
//  Created by Screencast on 3/13/17.
//  Copyright © 2017 Treehouse Island. All rights reserved.
//

import UIKit

protocol ContactDetailControllerDelegate: class {
    func didMarkAsFavoriteContact(_ contact: Contact)
}

class ContactDetailController: UITableViewController {
    
    var contact: Contact?
    
    // Outlets
    @IBOutlet weak var profileView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var streetAddressLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var zipLabel: UILabel!
    
    weak var delegate: ContactDetailControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configureView() {
        guard let contact = contact else { return }
        profileView.image = contact.image
        nameLabel.text = "\(contact.firstName) \(contact.lastName)"
        phoneNumberLabel.text = contact.phone
        emailLabel.text = contact.email
        streetAddressLabel.text = contact.street
        cityLabel.text = contact.city
        stateLabel.text = contact.state
        zipLabel.text = contact.zip
    }
    
    @IBAction func markAsFavorite(_ sender: Any) {
        guard let contact = contact else { return }
        delegate?.didMarkAsFavoriteContact(contact)
    }
}



















