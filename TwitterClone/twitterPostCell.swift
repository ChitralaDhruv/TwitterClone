//
//  postCell.swift
//  TwitterClone
//
//  Created by Chitrala Dhruv on 05/03/22.
//

import UIKit

class twitterPostCell: UITableViewCell {
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = #colorLiteral(red: 0.07505694777, green: 0.1268905699, blue: 0.1643333137, alpha: 1)
        
        addSubview(userProfile)
        addSubview(comment)
        addSubview(reTweet)
        addSubview(like)
        addSubview(share)
        addSubview(options)
        addSubview(tweet)
        addSubview(userName)
        addSubview(twitterName)
        
        setUpAutoLayout()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    private let tweetImage: UIImageView =  {
//       let image = UIImageView()
//
//        return image
//    }()
    //MARK: - Closures
    
    private let comment: UIButton =  {
       let comment = UIButton()
        comment.setImage(UIImage(named: "Message"), for: .normal)
        comment.tintColor = .white
        
        return comment
    }()
    
    private let reTweet: UIButton =  {
       let reTweet = UIButton()
        reTweet.setImage(UIImage(named: "Retweet"), for: .normal)
        reTweet.tintColor = .white

        
        return reTweet
    }()
    
    private let like: UIButton =  {
       let like = UIButton()
        like.setImage(UIImage(named: "Like"), for: .normal)
        like.tintColor = .white
        
        return like
    }()
    
    private let share: UIButton =  {
        let share = UIButton()
        share.setImage(UIImage(named: "Upload"), for: .normal)
        share.tintColor = .white
        
        return share
    }()
    
    private let options: UIButton =  {
       let options = UIButton()
        options.setImage(UIImage(named: "menumore"), for: .normal)
        
        return options
    }()
    
    private let userProfile: UIButton =  {
       let userProfile = UIButton()
        userProfile.setImage(UIImage(named: "profile-photo"), for: .normal)
        
        return userProfile
    }()
    
    private let tweet: UILabel =  {
       let tweet = UILabel()
        tweet.text = "Can we have Elon Musk for President?"
        tweet.textColor = .white
        tweet.numberOfLines = 0
        
        return tweet
    }()
    
    private let userName: UIButton =  {
       let userName = UIButton()
        userName.setTitle("Blaze Aldrich", for: .normal)
        userName.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        
        return userName
    }()
    
    private let twitterName: UIButton = {
        let twitterName = UIButton()
        twitterName.setTitle("@blaze_aldrich . 11h", for: .normal)
        twitterName.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        twitterName.setTitleColor(#colorLiteral(red: 0.5318393111, green: 0.5819706321, blue: 0.6367545128, alpha: 1), for: .normal)
        
         
         return twitterName
    }()
    
//    private lazy var stack: UIStackView =  {
//        let stack = UIStackView(arrangedSubviews: [comment, reTweet, like, share])
//
//        return stack
//    }()
    
    //let stack = UIStackView(arrangedSubviews: [comment, reTweet, like, share])
    
    //MARK: - AutoLayout
    
    
    
    private func setUpAutoLayout() {
        userProfile.translatesAutoresizingMaskIntoConstraints = false
        userProfile.topAnchor.constraint(equalTo: topAnchor, constant: 22).isActive = true
        userProfile.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25).isActive = true
        userProfile.widthAnchor.constraint(equalToConstant: 60).isActive = true
        userProfile.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        
        tweet.translatesAutoresizingMaskIntoConstraints = false
        tweet.topAnchor.constraint(equalTo: topAnchor, constant: 60).isActive = true
        tweet.leadingAnchor.constraint(equalTo: userProfile.trailingAnchor, constant: 5).isActive = true
        tweet.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
        tweet.bottomAnchor.constraint(equalTo: like.topAnchor, constant: -20).isActive = true
        
        
        userName.translatesAutoresizingMaskIntoConstraints = false
        userName.bottomAnchor.constraint(equalTo: tweet.topAnchor, constant: 4).isActive = true
        userName.leadingAnchor.constraint(equalTo: userProfile.trailingAnchor, constant: 5).isActive = true
        
        twitterName.translatesAutoresizingMaskIntoConstraints = false
        twitterName.bottomAnchor.constraint(equalTo: tweet.topAnchor, constant: 4).isActive = true
        twitterName.leadingAnchor.constraint(equalTo: userName.trailingAnchor, constant: 4).isActive = true
        
        
        options.translatesAutoresizingMaskIntoConstraints = false
        options.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        options.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -22).isActive = true
        options.widthAnchor.constraint(equalToConstant: 30).isActive = true
        options.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        comment.translatesAutoresizingMaskIntoConstraints = false
        comment.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15).isActive = true
        comment.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100).isActive = true
        comment.heightAnchor.constraint(equalToConstant: 25).isActive = true
        comment.widthAnchor.constraint(equalToConstant: 25).isActive = true
        
        
        reTweet.translatesAutoresizingMaskIntoConstraints = false
        reTweet.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15).isActive = true
        reTweet.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 175).isActive = true
        reTweet.heightAnchor.constraint(equalToConstant: 25).isActive = true
        reTweet.widthAnchor.constraint(equalToConstant: 25).isActive = true
        
        
        like.translatesAutoresizingMaskIntoConstraints = false
        like.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15).isActive = true
        like.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 250).isActive = true
        like.heightAnchor.constraint(equalToConstant: 25).isActive = true
        like.widthAnchor.constraint(equalToConstant: 25).isActive = true
        
        
        share.translatesAutoresizingMaskIntoConstraints = false
        share.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15).isActive = true
        share.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 325).isActive = true
        share.heightAnchor.constraint(equalToConstant: 25).isActive = true
        share.widthAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
}
