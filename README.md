# blueimp Gallery for Rails

blueimp Gallery is an image and video gallery featuring carousel and lightbox gallery with mouse and keyboard navigation, transition effects and more. This amazing plugin was created by [Sebastian Tschan](https://github.com/blueimp).

* blueimp Gallery version 2.7.3
* Official Website: http://blueimp.github.io/Gallery/


## Installation

Add this line to your application's Gemfile:

    gem 'blueimp-gallery'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blueimp-gallery

Add this line to your `app/assets/javascripts/application.js`

    //= require blueimp-gallery-all

Add this line to your `app/assets/stylesheets/application.css`

    *= require blueimp-gallery-all

## Usage

### Lightbox

This is a basic example how create a lightbox.

Add the following HTML snippet to your view:

```html
<div id="blueimp-gallery" class="blueimp-gallery">
  <div class="slides"></div>
  <h3 class="title"></h3>
  <a class="prev">‹</a>
  <a class="next">›</a>
  <a class="close">×</a>
  <a class="play-pause"></a>
  <ol class="indicator"></ol>
</div>
```

Add a list of image links you want to show into your gallery:


```html
<div id="links">
  <a href="images/photo1.jpg" title="Photo 1">
      <img src="images/thumb_photo1.jpg" alt="Photo 1">
  </a>
  <a href="images/photo2.jpg" title="Photo 2">
      <img src="images/thumb_photo2.jpg" alt="Photo 2">
  </a>
  <a href="images/photo3.jpg" title="Photo 3">
      <img src="images/thumb_photo3.jpg" alt="Photo 3">
  </a>
</div>
```

Finally add this JavaScript to display the images in your beautiful gallery:

```html
<script>
document.getElementById('links').onclick = function (event) {
  event = event || window.event;
  var target = event.target || event.srcElement,
    link = target.src ? target.parentNode : target,
    options = {index: link, event: event},
    links = this.getElementsByTagName('a');
  blueimp.Gallery(links, options);
};
</script>
```

or CoffeeScript if you want to add the script as an asset:

```coffeescript
document.getElementById("links").onclick = (event) ->
  event = event or window.event
  target = event.target or event.srcElement
  link = (if target.src then target.parentNode else target)
  options =
    index: link
    event: event

  links = @getElementsByTagName("a")
  blueimp.Gallery links, options
```

### Carousel

If you want a Carousel gallery, replace the html snippet with:

```html
<div id="blueimp-gallery-carousel" class="blueimp-gallery blueimp-gallery-carousel">
    <div class="slides"></div>
    <h3 class="title"></h3>
    <a class="prev">‹</a>
    <a class="next">›</a>
    <a class="play-pause"></a>
    <ol class="indicator"></ol>
</div>
```

And add this JavaScript:

```html
<script>
blueimp.Gallery(
  document.getElementById('links').getElementsByTagName('a'),
  {
    container: '#blueimp-gallery-carousel',
    carousel: true
  }
);
</script>
```

## More Features

blueimp Gallery has a lot more features and options as adding control keys, fullscreen, slide interval, etc. The complete documentation is on the [blueimp Gallery site](https://github.com/blueimp/Gallery).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
