//
//  ViewController.swift
//  QuikWord
//
//  Created by Brandon Wilmott on 2/22/18.
//  Copyright © 2018 Brandon Wilmott. All rights reserved.
//

import UIKit





class ViewController: UIViewController {
 
    var  currentWordIndex = 0
    var timer = Timer()
    var currentWord = 0
    var WPM = 0.150
    
    
 
  
    //lord of the rings first chapter as a String array
    let bookText = ["So","you're","going","to","go","through","with","it","then","","Gandalf","the","Wizard","said","slowly.","I","am","","Bilbo","replied.","I've","been","planning","this","for","a","long","time.","It'll","give","the","Hobbits","of","the","Shire","something","to","talk","about","for","the","next","nine","days","-","or","ninetynine","more","likely.","Anyway","at","least","I'll","have","my","little","joke.","Who","will","laugh","I","wonder?","Gandalf","mused","aloud","scratching","his","beard","idly.","For","weeks","carts","and","caravans","were","coming","from","all","over","Middleearth","to","bring","provisions","for","the","Grand","Old","Party","as","Bilbo","referred","to","it.","Wagons","of","food","from","the","Dwarvish","mines","at","Erebor","shiny","rocks","from","the","Seaelves","and","fancy","seductive","packages","from","southern","Mirkwood","arrived","daily","making","the","neighborhood","generally","more","crowded","and","cluttering","up","avenues.","Even","those","who","hadn't","said","anything","bad","about","Bilbo","before","were","starting","to","show","their","annoyance.","Mr.","Bilbo","Baggins","is","starting","to","get","a","mite","annoying","","old","Gaffer","Gamgee","grumbled","standing","outside","the","pub.","Queer","goingson","and","no","mistake.","Why","just","yesterday","a","bunch","o'","pesky","Woodelves","dragged","their","cart","right","acrost","my","yard","and","ruined","my","taters!","A","bunch","of","Men","from","Bree","came","to","my","place","yesterday","and","tried","to","sell","me","some","aluminum","siding","","mused","Old","Noakes","of","Bywater.","They","said","it","was","because","they","had","extra","after","building","that","horrible","Quonset","hut","over","the","Party","Tree","and","they","were","trying","to","unload","it.","Strange","folk","hereabouts.","Yes","but","it's","good","for","the","economy","","sneered","Bill","Ferny","the","local","banker.","A","lot","more","money","in","circulation.","Market's","been","doing","well.","Unionization","is","down","because","of","all","the","entrylevel","service","positions","that","are","being","created.","Widening","gap","between","the","haves","and","havenots","don't","you","think?","Good","to","find","work","for","idle","hands.","And","you","don't","know","nothin'","about","anythin'","Ferny","","Gaffer","Gamgee","snapped","echoing","the","popular","community","sentiment.","Mr.","Bilbo","Baggins","is","a","right","bastard","as","I've","often","said","and","it's","small","wonder","if","trouble","don't","come","of","him","and","his","imperialist","ways.","The","Revolution's","a'comin'","and","it's","the","likes","o'you","who'll","be","the","first","ag'inst","the","wall","so","sayeth","the","Lord.","And","with","that","he","spat","a","well-aimed","beernut","into","Ferny's","glass.","At","last","the","day","of","the","Big","Party","arrived.","Everywhere","there","was","too","much","to","eat","and","by","midafternoon","there","were","broken","presents","lying","all","over","the","Shire","attesting","to","the","low","quality","of","their","manufacture.","Gandalf","set","off","a","series","of","fireworks","later","on","in","the","day","including","great","skywriting","missiles","and","little","flaming","butterflies","who","took","to","wing","sailed","off","into","the","Eastfarthing","and","burned","all","its","trees","to","the","ground.","The","last","firework","sent","up","a","great","black","smoke","which","took","the","shape","of","a","giant","mountain","of","fire.","A","flicker","could","be","seen","of","a","giant","dragon","sailing","about","its","peak;","after","a","moment","the","great","dragon","went","sailing","over","the","heads","of","the","crowd","causing","great","panic","and","consternation","and","six","outright","heart","attacks","before","imploding","somewhere","over","the","Sackville-Baggins'","neighborhood","causing","considerable","property","damage","which","was","never","properly","repaired","for","generations","afterward.","That","is","the","signal","for","supper!","Bilbo","cried","out","to","the","survivors","who","were","only","partly","mollified.","Later","on","in","the","speciallydesigned","quonset","hut","which","Bilbo","had","built","especially","for","the","occasion","all","his","friends","and","neighbors","were","helping","themselves","to","their","third","helpings","of","macaroni","and","cheese","and","potato","salad","(the","latter","laced","liberally","with","what","Bilbo","called","the","traditional","secret","ingredient","which","while","not","actually","a","narcotic","still","had","unusual","effects","the","sum","of","which","were","still","under","scientific","inquiry","in","some","circles)","Bilbo","stood","up","and","motioned","for","quiet.","A","speech!","A","speech!","some","of","his","neighbors","cried","out","in","fear.","My","dear","Hobbits!","Bilbo","began.","There","was","much","cheering","at","this","as","Hobbits","on","the","whole","are","a","rather","egocentric","lot","and","anyway","the","latest","round","of","potato","salad","was","beginning","to","kick","in.","My","dear","Bagginses","and","Bracegirdles","Boffins","and","Borfledebees","Casmits","and","Cantankerums","Fassbinders","and","Fazoolas","Wombats","and","Wafflefoots.","WaffleFEET!","cried","out","an","irate","old","man","at","the","back","in","fact","the","very","man","who","had","earned","the","name","when","Bilbo's","nephew","Frodo","had","accidentally","dropped","a","hot","waffle-iron","on","his","feet","some","years","ago.","He","had","borne","the","Bagginses","no","ill-will","since","the","settlement","was","quite","generous.","Wafflefoots","continued","Bilbo","oblivious.","This","is","my","nine","hundreth","birthday!","And","though","one","million","years","is","too","short","a","time","to","have","spent","with","you","all...","There","was","some","muffled","conversation","throughout","the","hall","which","Bilbo","took","notice","of.","Well","on","bad","days","it","seems","like","a","million","years","he","explained.","Anyway","though","ten","billion","years","is","long","enough","to","endure","from","all","of","you","this","is","IT...","I","am","GOING...","I","am","leaving","NOW...","GoodBYE!","And","with","that","Bilbo","leaped","up","tore","all","his","clothes","off","scattering","them","about","the","astonished","guests'","heads","and","ran","from","the","great","Hut","screaming","and","flailing","his","arms.","Young","Frodo","looked","on","in","bemusement","refusing","to","answer","questions","from","the","astonished","crowd.","Everyone","knew","of","course","that","Bilbo","was","a","big","man","in","the","community.","But","-","and","Frodo","looked","at","the","crowd","particularly","noting","the","astonishment","on","old","Lobelia's","face","-","until","now","nobody","knew","just","how","big.","Well!","That's","done!","Bilbo","laughed","emerging","from","the","bedroom","at","Bag","End","freshly","dressed.","You","know","Gandalf","I've","been","wanting","to","do","that","for","as","long","as","I","can","remember.","Now","I","think","this","would","be","an","excellent","time","to","leave","the","Shire","at","least","before","they","can","all","find","their","torches","and","axe-handles.","Everything","stays","with","Frodo","as","we","promised.","Including","the","Ring?","Gandalf","asked.","Well","yes","I","suppose","so","","Bilbo","replied.","He","pulled","the","Ring","out","from","under","his","cloak","where","it","hung","on","a","fine","golden","chain","Bilbo","had","stolen","of","old","from","the","Brandybucks.","Still","though","I","kind","of","hate","to","get","rid","of","it.","This","seemed","to","me","to","be","the","only","thing","worthwhile","about","your","whole","stupid","plan","","Gandalf","said","uncharacteristically.","Put","it","on","the","mantel","and","walk","away","from","it.","It","has","got","far","too","much","hold","on","you.","Let","it","go!","It's","mine!","And","I","shall","keep","it","I","say!","Gandalf","raised","himself","up","to","his","full","height.","Bilbo's","hand","reached","quietly","for","the","hilt","of","his","sword.","It","will","be","my","turn","to","get","angry","soon","","the","wizard","intoned.","Listen","to","me:","you","must","give","Frodo","the","Ring!","Bilbo","suddenly","laughed.","Oh","that?","he","grinned.","Well","of","course","I'm","giving","him","the","Ring!","I","thought","you","meant","the","chain.","Slipping","the","Ring","off","the","chain","he","set","the","circle","of","gold","on","the","mantel","without","a","second","thought.","Then","he","slipped","the","chain","about","his","neck.","I","love","this","chain.","Stole","it","from","old","Matuseck","Brandybuck","back","before","he","went","senile.","Wouldn't","part","with","it","for","love","nor","money.","No","I","don't","give","two","flies","about","the","Ring.","Nothing","but","trouble","that","thing","has","been.","Well","I'm","off","Gandalf!","I'm","off","on","the","road","again","and","not","a","moment","too","soon","by","the","look","of","that","crowd","down","there.","And","taking","an","old","walking-stick","from","the","stand","by","the","door","Bilbo","went","outside","taking","a","path","around","the","back","of","the","Hill","so","he","could","leave","unobserved","and","as","he","left","he","began","singing","a","song","quietly","to","himself:","While","often","by","the","door","I","lie","And","look","upon","the","mountains'","feet","And","think","of","rains","and","hikers'","pains","And","sleeping","wetly","in","the","sleet","When","darkness","cry","does","terrify","And","wilderness","encircles","you","","And","being","food","for","goblins'","brood","Is","one","choice","and","starvation","two;","Then","staying","home","instead","of","roam","Will","have","a","very","great","appeal!","Forego","the","Quest!","And","have","a","rest!","Let","Dwarves","and","Elves","and","wizards","squeal!","But","since","the","Shire","is","filled","with","ire","","And","all","my","neighbors","fevers","grip","It's","plain","to","see!","I","must","agree!","The","time","has","come","to","take","a","trip!","Hours","later","Frodo","returned","to","Bag","End","a","little","glad","to","have","thrown","off","the","pursuit","at","last.","He","started","at","first","to","discover","someone","waiting","for","him","in","the","living-room","but","sighed","with","relief","when","he","saw","it","was","only","Gandalf.","Did","he","get","away?","Frodo","asked.","He","did","","Gandalf","replied.","And","just","at","the","last","for","they","were","getting","ready","to","set","after","him","with","dogs.","Luckily","he","doubled","back","at","the","Three-Farthing","Stone","as","I","recommended","or","there","would","be","a","special","bonfire","in","Tuckborough","tonight.","Are","you","well?","Yes","","Frodo","replied.","I","managed","to","convince","everyone","I","was","uninvolved","with","the","Hay","Incident.","Good","","Gandalf","said.","He","lit","his","pipe","with","a","nearby","candle","and","looked","at","Frodo","evenly.","He","left","things","for","you","on","the","mantel.","The","deed","to","Bag","End","a","signed","statement","saying","you","were","only","an","unwitting","accomplice","in","the","Bywater","Incident","and-","The","Ring!","Frodo","said","looking","at","the","mantel","with","astonishment.","Has","he","left","me","that?","He","has","","Gandalf","replied","though","you'll","have","to","find","a","new","chain.","But","if","I","may","counsel","you","in","the","use","of","your","own","-","don't","use","it!","Now","or","later!","It","may","have","other","powers","besides","quick","and","easy","seduction.","I","can't","believe","Bilbo","left","me","the","Ring","","Frodo","gasped.","He","used","to","say","that","it","and","a","bottle","of","Westfarthing","Chinook","was","all","you","needed","for","the","perfect","weekend.","Well","lock","it","up","someplace","and","stay","away","from","it","","Gandalf","intoned.","No","Took-wives","no","Elf-virgins","and","no","real","estate","deals.","And","no","political","aspirations!","In","the","morning","I'm","off","to","see","if","I","can","learn","more","about","it.","In","the","meantime","leave","it","unused","until","I","return.","I'll","uh","I'll","think","about","that","all","right","","Frodo","blurted","trying","hard","not","to","think","about","the","Ring","and","young","Cassiopiea","Took.","The","next","morning","Gandalf","left","leaving","Frodo","with","only","his","thoughts","his","yearnings","and","a","halfempty","bottle","of","Westfarthing","Chinook","for","company."

]
  
   let eightHundredWPM = UIButton()
   let sevenHundredWPM = UIButton()
   let sixHundredWPM = UIButton()
   let beginButton = UIButton()
 

    
    @IBOutlet weak var textBox: UILabel! //declare text label and connect to the view
    @IBAction func eightHundredWPM(_ sender: UIButton) {
        WPM = 0.010
        scheduledTimerWithTimeInterval()
        
    }
    
    @IBAction func sevenHundredWPM(_ sender: UIButton) {
        WPM = 0.050
        scheduledTimerWithTimeInterval()
    }
    
    @IBAction func sixHundredWPM(_ sender: UIButton) {
        WPM = 0.100
        scheduledTimerWithTimeInterval()
    }
    
    @IBAction func beginButton(_ sender: UIButton) {// declare beginButton and connecto to view
        
 scheduledTimerWithTimeInterval()//call function scheduledwithtimeinterval
    
    }
    func scheduledTimerWithTimeInterval(){
        print("in timer func")
        // Scheduling timer to update the textBox label with the interval of 83 hundreths seconds
        timer = Timer.scheduledTimer(withTimeInterval: WPM, repeats: true){ [weak self] _ in
            
            self?.currentWordIndex = (self?.currentWordIndex)! + 1
            self?.textBox.text = self?.bookText[(self?.currentWordIndex)!]
            
            
            
        }
        
        
        
        
    }

  


       override func viewDidLoad() {
 
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
  eightHundredWPM.applyDesign()
  sixHundredWPM.applyDesign()
  beginButton.applyDesign()
  sevenHundredWPM.applyDesign()
        
        
       
            
        
    

    }


      override  func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


        
}

extension UIButton {
    
    func applyDesign(){
        self.layer.cornerRadius = 4
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 4
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 0, height:0)
        self.backgroundColor = UIColor.blue
        self.setTitleColor(UIColor.white, for: .normal)
        self.layer.shadowOpacity = 0.5
        
    }
}

class roundButton: UIButton {
    
    override func didMoveToWindow() {
        self.layer.cornerRadius = 4
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 4
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 0, height:0)
        self.backgroundColor = UIColor.clear
        self.setTitleColor(UIColor.white, for: .normal)
        self.layer.shadowOpacity = 0.5
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.white.cgColor
    }
}

        
  
    






