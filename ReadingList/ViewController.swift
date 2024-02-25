//
//  ViewController.swift
//  ReadingList
//
//  Created by Elif Dede on 2/25/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var bookList = [
        Book("The Widows of Malabar Hill", "Perveen Mistry, the daughter of a respected Zoroastrian family, has just joined her father's law firm, becoming one of the first female lawyers in India. Armed with a legal education from Oxford, Perveen also has a tragic personal history that makes women's legal rights especially important to her. Mistry Law has been appointed to execute the will of Mr. Omar Farid, a wealthy Muslim mill owner who has left three widows behind. But as Perveen examines the paperwork, she notices something strange: all three of the wives have signed over their full inheritance to a charity. What will they live on? Inspired in part by the woman who made history as India's first female attorney, The Widows of Malabar Hill is a richly wrought story of multicultural 1920s Bombay as well as the debut of a sharp new sleuth.",  UIImage(named: "book1")),
        Book("And Then There Were None","Ten people, each with something to hide and something to fear, are invited to an isolated mansion on Indian Island by a host who, surprisingly, fails to appear. On the island they are cut off from everything but each other and the inescapable shadows of their own past lives. One by one, the guests share the darkest secrets of their wicked pasts. And one by one, they die… Which among them is the killer and will any of them survive?", UIImage(named: "book2")),
        Book("The Silent Patient","Alicia Berenson’s life is seemingly perfect. A famous painter married to an in-demand fashion photographer, she lives in a grand house with big windows overlooking a park in one of London’s most desirable areas. One evening her husband Gabriel returns home late from a fashion shoot, and Alicia shoots him five times in the face, and then never speaks another word.Alicia’s refusal to talk, or give any kind of explanation, turns a domestic tragedy into something far grander, a mystery that captures the public imagination and casts Alicia into notoriety. His determination to get her to talk and unravel the mystery of why she shot her husband takes him down a twisting path into his own motivations―a search for the truth that threatens to consume him….", UIImage(named: "book3")),
        Book("Long Bright River","In a Philadelphia neighborhood rocked by the opioid crisis, two once-inseparable sisters find themselves at odds. One, Kacey, lives on the streets in the vise of addiction. The other, Mickey, walks those same blocks on her police beat. They don't speak anymore, but Mickey never stops worrying about her sibling. Alternating its present-day mystery with the story of the sisters' childhood and adolescence, Long Bright River is at once heart-pounding and heart-wrenching: a gripping suspense novel that is also a moving story of sisters, addiction, and the formidable ties that persist between place, family, and fate.",  UIImage(named: "book4")),
        Book("The Ruin", "When Aisling Conroy's boyfriend Jack is found in the freezing black waters of the river Corrib in Ireland, the police tell her it was suicide. She throws herself into work, trying to forget—but Jack's sister Maude reappears in Ireland after years abroad, determined to prove Jack was murdered. This unsettling small-town noir draws us deep into the dark heart of Ireland, where corruption, desperation, and crime run rife. A gritty look at trust and betrayal where the written law isn't the only one, The Ruin asks who will protect you when the authorities can't—or won’t.", UIImage(named: "book5")),
        Book("My Sister, the Serial Killer","Korede’s sister Ayoola is many things: the favorite child, the beautiful one, possibly sociopathic. And now Ayoola’s third boyfriend in a row is dead, stabbed through the heart with Ayoola’s knife. Korede’s practicality is the sisters’ saving grace. Korede has long been in love with a kind, handsome doctor at the hospital where she works. She dreams of the day when he will realize that she’s exactly what he needs. But when he asks Korede for Ayoola’s phone number, she must reckon with what her sister has become and how far she’s willing to go to protect her.", UIImage(named: "book6")),
        Book("The Chain", "It's something parents do every morning: Rachel Klein drops her daughter at the bus stop and heads into her day. But a cell phone call from an unknown number changes everything: it's a woman on the line, informing her that she has Kylie bound and gagged in her back seat, and the only way Rachel will see her again is to follow her instructions exactly: pay a ransom, and find another child to abduct. The rules are simple, the moral challenges impossible; find the money fast, find your victim, and then commit a horrible act you'd have thought yourself incapable of just twenty-four hours ago.But what the masterminds behind The Chain know is that parents will do anything for their children. It turns out that kidnapping is only the beginning.", UIImage(named: "book7")),
        Book("The Dry","After getting a note demanding his presence, Federal Agent Aaron Falk arrives in his hometown for the first time in decades to attend the funeral of his best friend, Luke. Twenty years ago when Falk was accused of murder, Luke was his alibi. Falk and his father fled under a cloud of suspicion, saved from prosecution only because of Luke’s steadfast claim that the boys had been together at the time of the crime. But now more than one person knows they didn’t tell the truth back then, and Luke dead. As Falk reluctantly investigates to see if there’s more to Luke’s death than there seems to be, long-buried mysteries resurface, as do the lies that have haunted them. And Falk will find that small towns have always hidden big secrets.",   UIImage(named: "book8")),
        Book("Bluebird, Bluebird","When it comes to law and order, East Texas plays by its own rules -- a fact that Darren Mathews, a black Texas Ranger, knows all too well. Deeply ambivalent about growing up black in the lone star state, he was the first in his family to get as far away from Texas as he could. Until duty called him home. When his allegiance to his roots puts his job in jeopardy, he travels up Highway 59 to the small town of Lark, where two murders. From a writer and producer of the Emmy winning Fox TV show Empire, Bluebird, Bluebird is a rural noir suffused with the unique music, color, and nuance of East Texas.",  UIImage(named: "book9")),
        Book("Blacktop Wasteland","A husband, a father, a son, a business owner…And the best getaway driver east of the Mississippi.Beauregard “Bug” Montage is an honest mechanic, a loving husband, and a hard-working dad. Bug knows there’s no future in the man he used to be: known from the hills of North Carolina to the beaches of Florida as the best wheelman on the East Coast. He thought he'd left all that behind him, but as his carefully built new life begins to crumble, he finds himself drawn inexorably back into a world of blood and bullets. Haunted by the ghost of who he used to be and the father who disappeared when he needed him most, Bug must find a way to navigate this blacktop wasteland...or die trying.", UIImage(named: "book10"))
    ]
    var selectedBookSummary = ""
    var selectedBookTitle = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = bookList[indexPath.row].title
        content.image = bookList[indexPath.row].coverImage
        cell.contentConfiguration = content
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedBookTitle = bookList[indexPath.row].title
        selectedBookSummary = bookList[indexPath.row].summary
        
        performSegue(withIdentifier: "toNavigate", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNavigate" {
            let details = segue.destination as! DetailedView
            details.bookSummary = selectedBookSummary
            details.bookTitle = selectedBookTitle
        }
    }

}

