//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController, StoryBrainDelegate {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(story.stories[0])
        story.delegate = self
    }

    @IBAction func choiceSelected(_ sender: UIButton) {
        story.checkChoice(sender.titleLabel!.text!, story.currentDestination)
    }
    
    func updateUI(_ storyStep:Story){
        storyLabel.text = storyStep.title
        choice1Button.setTitle(storyStep.choice1, for: .normal)
        choice2Button.setTitle(storyStep.choice2, for: .normal)
    }
}

