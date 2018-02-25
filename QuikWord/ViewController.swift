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
    
    
    
  
    
    let bookText:[String] = ["So","you're","going","to","go","through","with","it","then","","Gandalf","the","Wizard","said","slowly.","I","am","","Bilbo","replied.","I've","been","planning","this","for","a","long","time.","It'll","give","the","Hobbits","of","the","Shire","something","to","talk","about","for","the","next","nine","days","-","or","ninetynine","more","likely.","Anyway","at","least","I'll","have","my","little","joke.","Who","will","laugh","I","wonder?","Gandalf","mused","aloud","scratching","his","beard","idly."]
    

    
    @IBOutlet weak var textBox: UILabel!
    
   
    
    @IBAction func beginButton(_ sender: Any) {
        
       scheduledTimerWithTimeInterval()
    }
   
    
    func scheduledTimerWithTimeInterval(){
        // Scheduling timer to Call the function "wordchanger" with the interval of 2 hundreths seconds
        timer = Timer.scheduledTimer(timeInterval: 0.02, target: self, selector: #selector(self.wordchanger), userInfo: nil, repeats: true)
        ( currentWordIndex = currentWordIndex + 1)
    }
    
    func updateCounting(){
        print("counting..")
    }
    
    
    @objc func wordchanger(){
        if currentWordIndex < bookText.count {
            
           
            (textBox.text = bookText[currentWordIndex])
          
            
          
            scheduledTimerWithTimeInterval()
        }else{
            
            let alert = UIAlertController(title: "End of Demo, Would you like to start over", message: "choose yes or no.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            
            self.present(alert, animated: true)
            
            currentWordIndex = 0
            textBox.text = bookText[currentWordIndex]
            
        }
    }
    
    
    
    

        
        
     //else{
//
//             let alert = UIAlertController(title: title, message: "message", preferredStyle: UIAlertControllerStyle.alert)
//                alert.addAction(UIAlertController(title: "Congratulations", message: "Youve reached the end of the demo", preferredStyle: UIAlertControllerStyle.alert, handler: {(action) in alert.dismiss
//                })
//
//   ) }
 
  
    

    
    
    
    
       override func viewDidLoad() {
      
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
        
        
        
       
            
        
    

    }


      override  func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


        

        
  
    

}



