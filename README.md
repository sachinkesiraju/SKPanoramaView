# SKPanoramaView
Create beautiful animated panorama views. Inspired by the intro on the LinkedIn iOS app.

<b> Features </b>
- Adapts to any image - Automatically sets the panorama view based on the dimensions of the image.
- Super easy to implement - Just 3 lines of code required.

Perfect for intro views or background views.

<img src = "http://i.giphy.com/I8yXoOfjBkYZW.gif" width = "320px">

Note: Demos are significantly slower on the gifs than on an actual simulator

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
Subviews can easily be added to the panorama view to create the effect as shown below

<img src = "http://i.giphy.com/URBnxjH62DTrO.gif" width = "320px">

By simply using:
```
    SKPanoramaView *panoramaView = [[SKPanoramaView alloc] initWithFrame:self.view.frame image:[UIImage imageNamed:@"new york"]];
    panoramaView.animationDuration = 60;
    [self.view addSubview:panoramaView];
    [panoramaView startAnimating];
    UIView *overlayView = [[UIView alloc] initWithFrame:self.view.frame];
    overlayView.backgroundColor = [UIColor blackColor];
    overlayView.alpha = 0.4;
    [panoramaView addSubview:overlayView];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"linkedin"]];
    imageView.center = panoramaView.center;
    [panoramaView addSubview:imageView];
```

For more help on how to do this, check out the <a href = "https://github.com/sachinkesiraju/SKPanoramaView/tree/master/SKPanoramaViewDemo"> Demo </a>.
 
<h1> License </h1>
SKPanoramaView is available under the MIT License. For more information, see the <a href ="https://github.com/sachinkesiraju/SKPanoramaView/blob/master/LICENSE">LICENSE </a> file.
