# colorSelector
<img src="https://i.postimg.cc/GtRCYG44/menuView.png"></img><img src="https://i.postimg.cc/vTvdvTn3/videoApp.gif"></img>

## Description
The application is a menu with five buttons whose functions is that depending on the button name, it navigates to another view with the background of the respective color.

### Built with

The project was built using the Swift programming language in Xcode and using UIKit framework. Git was used for version management.

## Important Code

In this app we have two viewControllers, one of the menu view and another for the background color view.

### ViewController

The menu viewController contains the respective color buttons and actions are defined for them. When some button have been pressed actives a function named "performSegue" to change the view and the background to the respective color.

The "performSegue function needs a prepare func to complete the process to change the menu view to the respective coloredBackground View.

```swift
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "yellowColor"{
            
            if let colors = segue.destination as?
                ViewControllerColor{
                
                colors.colorTitle = "Amarillo"
                colors.colorBackground = UIColor.yellow
            }
        }else if segue.identifier == "blueColor"{
            
            if let colors = segue.destination as?
                ViewControllerColor{
                
                colors.colorTitle = "Azul"
                colors.colorBackground = UIColor.blue
            }
        }else if segue.identifier == "redColor"{
            
            if let colors = segue.destination as?
                ViewControllerColor{
                
                colors.colorTitle = "Rojo"
                colors.colorBackground = UIColor.red
            }
        }else{
            if let colors = segue.destination as?
                ViewControllerColor{
                
                colors.colorTitle = "Green"
                colors.colorBackground = UIColor.green
            }
        }
    }
 ``` 
 
 ### ViewControllerColor
 
 The ViewControllerColor recive the strings to the colorTitle and colorBackground variables acording to the pressed button and change the title and background for the view when the viewDidLoad was called.
 
 ```swift
 class ViewControllerColor: UIViewController {
    
    var colorTitle:String?
    var colorBackground:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let finalTitle = colorTitle{
            self.title = finalTitle
        }
        
        if let finalBG = colorBackground{
            self.view.backgroundColor = finalBG
        }
    }
}
```
