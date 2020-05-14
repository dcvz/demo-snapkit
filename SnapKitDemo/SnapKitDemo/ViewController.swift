//
//  ViewController.swift
//  SnapKitDemo
//
//  Created by David Chavez on 14.05.20.
//  Copyright © 2020 David Chavez. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - UI Elements
    
    private let navigationCloseImageView = UIImageView()
    private let containerView = UIView()
    private let iconImageView = UIImageView()
    private let titleLabel = UILabel()
    private let subtitleLabel = UILabel()
    private let ctaButton = UIButton()
    
    // MARK: - Attributes
    
    private let shouldHaveCTA = true
    
    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = #colorLiteral(red: 0.7411764706, green: 0.9058823529, blue: 0.862745098, alpha: 1)
        layoutScreen()
    }
    
    private func layoutScreen() {
        // navigation
        view.addSubview(navigationCloseImageView)
        navigationCloseImageView.image = #imageLiteral(resourceName: "NavigationClose")
        
        navigationCloseImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(4)
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
        }
        
        // container
        view.addSubview(containerView)
        containerView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        // image view
        containerView.addSubview(iconImageView)
        iconImageView.image = #imageLiteral(resourceName: "SkinQuizIcon")
        iconImageView.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 256, height: 256))
            make.top.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        
        // title label
        containerView.addSubview(titleLabel)
        titleLabel.text = "Personalised Skincare"
        titleLabel.font = .boldSystemFont(ofSize: 24)
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(iconImageView.snp.bottom).offset(48)
            make.centerX.equalToSuperview()
        }
        
        // subtitle label
        containerView.addSubview(subtitleLabel)
        subtitleLabel.text = "Best formulations with the most effective ingredients, selected by dermatologists."
        subtitleLabel.font = .systemFont(ofSize: 16)
        subtitleLabel.textAlignment = .center
        subtitleLabel.numberOfLines = 0
        subtitleLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(12)
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.width.equalTo(311)
            make.bottom.equalToSuperview().priority(.low)
        }
        
        if shouldHaveCTA {
            // ctaButton
            containerView.addSubview(ctaButton)
            ctaButton.setTitle("Let’s Get Started", for: .normal)
            ctaButton.backgroundColor = #colorLiteral(red: 0.2, green: 0.1921568627, blue: 0.1960784314, alpha: 1)
            ctaButton.layer.cornerRadius = 8
            
            ctaButton.snp.makeConstraints { make in
                make.top.equalTo(subtitleLabel.snp.bottom).offset(40)
                make.bottom.equalToSuperview().priority(.required)
                make.centerX.equalToSuperview()
                make.width.equalTo(190)
                make.height.equalTo(48)
            }
        }
    }


}

