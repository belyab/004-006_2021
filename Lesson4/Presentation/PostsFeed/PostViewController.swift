//
//  PostViewController.swift
//  Lesson4
//
//  Created by Эльмира Байгулова on 19.10.2021.
//

import UIKit

class PostViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var accountImage: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var accountNameLabel: UILabel!
    @IBOutlet weak var postTextLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var postImageView: UIImageView!
    
    // MARK: - Dependencies
    var post: Post?
    
    // MARK: -  View Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
    }
    
    //Private Functions
    private func config() {
        guard let post = post else { return }
        accountImage.image = post.accountImage
        usernameLabel.text = post.username
        accountNameLabel.text = post.accountName
        postTextLabel.text = post.postText
        dateLabel.text = post.postDate
        postImageView.image = post.postImage
        makeImageViewRound(image: accountImage)
    }
    
    private func makeImageViewRound(image: UIImageView) {
        image.layer.cornerRadius = image.frame.size.width / 2
        image.clipsToBounds = true
    }
}
