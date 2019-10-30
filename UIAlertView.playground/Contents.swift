//: A UIKit based Playground for presenting an alert
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        
        //Alert view inititated with title, message and preffered style.
        let alert = UIAlertController.init(title: "Alert Title", message: "Alert Message", preferredStyle: .alert)
        
        //action added (buttons)
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (UIAlertAction) in
            //Code written here will be executed after 'Okay' button will be pressed
            return
        }))
        //Use the below clean syntax code when no action is needed
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        
        //text field added to alert
        alert.addTextField(configurationHandler: nil)
        
        //alert presented
        self.present(alert, animated: true, completion: nil)
        
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
