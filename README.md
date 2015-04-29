# SKPanoramaView
Create beautiful animated panorama views. Inspired by the intro on the LinkedIn iOS app.

<b> Features </b>
- Adapts to any image - Automatically sets the panorama view based on the dimensions of the image.
- Super easy to implement - Just 3 lines of code required.

Perfect for intro views or background views.

<img src = "https://github.com/sachinkesiraju/SKPanoramaView/blob/master/linkedin.gif" width = "320px">

<h1> Installation </h1>
<h3> Cocoapods </h3>
SKPanoramaView is available through <a href = "cocoapods.org"> Cocoapods</a>. To install it, simply add the following to your Podfile.
```
pod 'SKPanoramaView'
```
<h3> Alternative </h3>
Alternatively, you can always just drag and drop the folder 'SKPanoramaView' into your project and ``#import "SKPanoramaView.h"`` and you're good to go.

<h2> Implementation </h2>

SKPanoramaView is super easy to implement. Just add the following lines of code to your view and you're done!

```
    SKPanoramaView *panoramaView = [[SKPanoramaView alloc] initWithFrame:self.view.frame image:[UIImage imageNamed:@"golden gate"]];
    [self.view addSubview:panoramaView];
    [panoramaView startAnimating];
```
Optionally, you can set the animation duration of the view as follows:
```
panoramaView.animationDuration = 15.0f; //15 seconds (Default: 10s)
```

For more help on how to do this, check out the <a href = "https://github.com/sachinkesiraju/SKPanoramaView/tree/master/SKPanoramaViewDemo"> Demo </a>.
 
<h1> License </h1>
SKPanoramaView is available under the MIT License. For more information, see the <a href ="https://github.com/sachinkesiraju/SKPanoramaView/blob/master/LICENSE">LICENSE </a> file.
