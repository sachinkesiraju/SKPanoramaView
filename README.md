# SKPanoramaView
Create beautiful animated panorama views. Inspired by the intro on the LinkedIn iOS app.

<b> Features </b>
- Adapts to any image - Automatically sets the panorama view based on the dimensions of the image.
- Super easy to implement - Just 3 lines of code required.

Perfect for intro views or background views.

 <img src = "https://github.com/sachinkesiraju/SKPanoramaView/blob/master/SKPanoramaViewDemo/Example%20GIFs/linkedin.gif" width = "320px"> 

<h1> Installation </h1>

Simply add the 'SKPanoramaView' folder into your project and ``import "SKPanoramaView.h"`` and you're good to go.

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

 <img src = "https://github.com/sachinkesiraju/SKPanoramaView/blob/master/SKPanoramaViewDemo/Example%20GIFs/PanoramaViewDemo.gif" width = "320px"> 
 
<h1> License </h1>
SKPanoramaView is available under the MIT License. For more information, see the <a href ="https://github.com/sachinkesiraju/SKPanoramaView/blob/master/LICENSE">LICENSE </a> file.
