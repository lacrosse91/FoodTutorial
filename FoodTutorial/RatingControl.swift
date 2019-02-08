//
//  RatingControl.swift
//  FoodTutorial
//
//  Created by 川内翔一朗 on 2019/02/08.
//  Copyright © 2019 川内翔一朗. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {

    private var ratingButtons = [UIButton]()

    var rating = 0



    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }

    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
//        fatalError("init(coder:) has not been implemented")
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    private func setupButtons() {

        for _ in 0..<5 {
            // Create the button
            let button = UIButton()
            button.backgroundColor = UIColor.green

            // Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 30.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 30.0).isActive = true

            // Setup the button action
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)

            // Add the button to the stack
            addArrangedSubview(button)

            // Add the new button to the rating button array
            ratingButtons.append(button)
        }
    }

    @objc func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }

}
