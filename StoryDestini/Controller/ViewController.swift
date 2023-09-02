//
//  ViewController.swift
//  StoryDestini
//
//  Created by jae hoon lee on 2023/09/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Label: UIButton!
    @IBOutlet weak var choice2Label: UIButton!
    
    var storyBrain = StoryBrain()
     
     override func viewDidLoad() {
         super.viewDidLoad()
         
         setUp()
     }

     @IBAction func choiceMade(_ sender: UIButton) {
         
         storyBrain.nextStory(userChoice: sender.currentTitle!)
         setUp()
     }
    
     //화면 세팅
     func setUp() {
         storyLabel.text = storyBrain.getStoryTitle()
         choice1Label.setTitle(storyBrain.getChoice1Label(), for: .normal)
         choice2Label.setTitle(storyBrain.getChoice2Label(), for: .normal)
     }
     
 }
