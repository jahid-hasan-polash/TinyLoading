# TinyLoading

This is a very small library / FrameWork for showing Loading Screen on iOS Apps. Most of the loading screen libraries shows full screen loading but TinyLoading can be shown on any component frame. You can use it just to show loading on a image or a view or a cell or on the whole screen.

![simulator screen shot - iphone 8 - 2018-04-12 at 18 22 52](https://user-images.githubusercontent.com/16785810/38677267-92664b00-3e7f-11e8-8105-5640633f141f.png)
![simulator screen shot - iphone 8 - 2018-04-12 at 18 23 03](https://user-images.githubusercontent.com/16785810/38677268-92b7dbb4-3e7f-11e8-9e5e-2ede684f3c81.png)

To use it Clone the project in your project directory and add as an embaded framework (if you don't know how to do that you can watch this: https://www.youtube.com/watch?v=i7Yq2B00u9g . Of course there are other ways to that.). Nothing else!

To show a loading on a view you just do ```contentView.startLoading()```  
And to hide it ```contentView.stopLoading()```  
you can use any view as contentView (imageView, tableView, cell.contentView).

## Customisation
You can customise the Loading Screen in many ways.
the  `startLoading()` takes multiple parameters.  
``` 
contentView.startLoading(indicatorPosition: IndicatorPosition, 
                         backgroundAlpha: CGFloat, 
                         indicatorStyle: UIActivityIndicatorViewStyle, 
                         appearAnimationDuration: CGFloat, 
                         appearanceType: AppearanceType, 
                         blurEffect: UIBlurEffect)
```  
Here `IndicatorPosition` can be `.top`, `.bottom` and `.center`(default).  
And `AppearanceType` can be `.None `, `.FromLeft`, `.FromRight`, `.FromTop`, `.FromBottom`, `.CrossDisolve` and `.Default`.  
All the parameters are optional. So pass only which you want to change.

# Support
Make any upgradation and place a pull request.

# Author
Jahid Hasan Polash  
jahidhasanpolash@gmail.com  
InfancyIT (https://infancyit.com/)
