//
//  ViewController.swift
//  Slide Cards
//
//  Created by Gokul Nair on 20/06/20.
//  Copyright © 2020 Gokul Nair. All rights reserved.
//

import UIKit
import CardSlider

struct Item: CardSliderItem {
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
}

class slideCards: UIViewController , CardSliderDataSource{
   
    @IBOutlet var presentButoon: UIButton!
    
    var data = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        presentButoon.setTitleColor(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1), for: .normal)
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "logo"),
                         rating: nil,
                         title: "Avengers",
                         subtitle: "The Team Of Superheros",
                         description: "The Avengers began as a group of extraordinary individuals who were assembled to defeat Loki and his Chitauri army in New York City. Since then, the team has expanded its roster and faced a host of new threats, while dealing with their own turmoil."))
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "im"),
                                rating: 5,
                                title: "IRON MAN",
                                subtitle: "Love You 3000",
                                description: "Inventor Tony Stark applies his genius for high-tech solutions to problems as Iron Man, the armored Avenger"))
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "ca"),
                                rating: 5,
                                title: "CAPTAIN AMERICA",
                                subtitle: "The Army Man",
                                description: "America’s World War II Super-Soldier continues his fight in the present as an Avenger and untiring sentinel of liberty."))
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "ds"),
                         rating: 4,
                                title: "DOCTOR STRANGE",
                                subtitle: "Time Stone",
                                description: "In an accident, Stephen Strange, a famous neurosurgeon, loses the ability to use his hands. He goes to visit the mysterious Ancient One to heal himself and becomes a great sorcerer under her tutelage."))
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "hulk"),
                                rating: 4,
                                title: "HULK",
                                subtitle: "The Gamma Man",
                                description: "Exposed to heavy doses of gamma radiation, scientist Bruce Banner transforms into the mean, green rage machine called the Hulk."))
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "bw"),
                                rating: 4,
                                title: "BLACK WIDOW",
                                subtitle: "Natasha",
                                description: "Trusted by some and feared by most, the Black Widow strives to make up for the bad she had done in the past by helping the world, even if that means getting her hands dirty in the process."))
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "thor"),
                                rating: 4,
                                title: "Thor",
                                subtitle: "King Of Asgard",
                                description: "Thor Odinson wields the power of the ancient Asgardians to fight evil throughout the Nine Realms and beyond."))
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "vision"),
                                rating: 4,
                                title: "VISION",
                                subtitle: "Mind Stone",
                                description: "A fully unique being, Vision came about thanks to a combination of Wakandan Vibranium, Asgardian lightning, an Infinity Stone, and more."))
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "he"),
                                       rating: 4,
                                       title: "HAWKEYE",
                                       subtitle: "The Family Man ",
                                       description: "An expert marksman and fighter, Clint Barton puts his talents to good use by working for S.H.I.E.L.D. as a special agent. The archer known as Hawkeye also boasts a strong moral compass that at times leads him astray from his direct orders."))
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "f"),
                                       rating: 4,
                                       title: "FALCON",
                                       subtitle: nil,
                                       description: "When Captain America asked Air Force Veteran Sam Wilson for help, Wilson immediately agreed. He donned the flight suit he’d used in combat to become the Falcon, setting him on a path towards becoming an Avenger."))
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "wm"),
                                rating: 4,
                                title: "SCARLET WITCH",
                                subtitle: "Manipulator",
                                description: "Notably powerful, Wanda Maximoff has fought both against and with the Avengers, attempting to hone her abilities and do what she believes is right to help the world."))
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "am"),
                                rating: 4,
                                title: "ANT MAN",
                                subtitle: "Ant King",
                                description: "Ex-con Scott Lang uses high-tech equipment to shrink down to insect-size and fight injustice as Ant-Man."))
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "w"),
                                rating: 3,
                                title: "WASP",
                                subtitle: nil,
                                description: "Wasp is a fictional superhero appearing in American comic books published by Marvel Comics. Created by Stan Lee, Ernie Hart, and Jack Kirby, the character first appeared in Tales to Astonish "))
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "bp"),
                                rating: 4,
                                title: "BLACK PANTHER",
                                subtitle: "King Of Wakanda",
                                description: "As the king of the African nation of Wakanda, T’Challa protects his people as the latest in a legacy line of Black Panther warriors."))
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "s"),
                                rating: 4,
                                title: "SPIDERMAN",
                                subtitle: "Spidey",
                                description: "With amazing spider-like abilities, teenage science whiz Peter Parker fights crime and dreams of becoming an Avenger as Spider-Man."))
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "wm"),
                                rating: 3,
                                title: "WAR MACHINE",
                                subtitle: nil,
                                description: "Air Force Lieutenant Colonel James “Rhodey” Rhodes exudes loyalty and courage, whether flying a plane or piloting the War Machine armor."))
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "cm"),
                                rating: 3,
                                title: "CAPTAIN MARVEL",
                                subtitle: "Marvel Of Galexy",
                                description: "Amidst a mission, Vers, a Kree warrior, gets separated from her team and is stranded on Earth. However, her life takes an unusual turn after she teams up with Fury, a S.H.I.E.L.D. agent."))
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "thanos"),
                                rating: 5,
                                title: "Most powerful eternal of Titan",
                                subtitle: "The Team Of Superheros",
                                description: "Thanos is a fictional supervillain appearing in American comic books published by Marvel Comics. The character was created by writer-artist Jim Starlin, and made his first appearance in The Invincible Iron Man "))
        
        data.append(Item(image: UIImage(imageLiteralResourceName: "l"),
                                rating: 4,
                                title: "LOKI",
                                subtitle: "Son of King Odin",
                                description: "Loki is a fictional character appearing in American comic books published by Marvel Comics. Created by writer Stan Lee, scripter Larry Lieber and penciller Jack Kirby, a version of the character first appeared in Venus. The modern-day incarnation of Loki first appeared in Journey into Mystery."))
        
    }

   @IBAction func presentSlider(){
    
    let vc = CardSliderViewController.with(dataSource: self)//Here view controller is the one which we got from pod file , dont                                                        get confused between the controller on which you are working and                                                       this one(cardSliderViewController)
    vc.title = "Avengers"
    vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
    }
    
    
    
    func item(for index: Int) -> CardSliderItem {
        return data[index]
       }
       
       func numberOfItems() -> Int {
           return data.count
       }
}

