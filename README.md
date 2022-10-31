# Kaschber

Kaschber is a Jekyll port for Ghost's default theme Casper [https://github.com/TryGhost/Casper](https://github.com/TryGhost/Casper). It's unopinionated and tries to stick as closely as possible to the Casper stylings and layout. It only comes with three pre-defined plugins: jekyll-feed, jekyll-paginate-v2 and jekyll-seo.

The overall goal is to be a simple default theme like minima, looking closely to Casper and trying to be as lean and flexible as possible.

For a demo of Ghost see [https://demo.ghost.io/](https://demo.ghost.io/).

# Features
- (Auto) dark mode
- Full author pages & information via Jekyll collections
- Auto generated tag pages plus custimisation via Jekyll collections
- Pagination via jekyll-paginate-v2
- Atom Feeds by [Jekyll-feed](https://github.com/jekyll/jekyll-feed)

# Installation
Add this line to your Jekyll site's Gemfile:
```
gem "kaschber"
```

And then execute:
```bash
$ bundle
```

# Usage
Change the theme in your config file to Kaschber
```
theme: kaschber
```

Then change your index.html or index.md to look like this
```
---
layout: home
current: home
class: 'home-template'
---
```

If you have a custom index.html, you will have to copy the index.html from the Git repository and add your changes manually.

## Customisation
You can specifiy these customisation options in your `_config.yml`

| Config                  | Default           | Options                           |
|-------------------------|-------------------|-----------------------------------|
| title_font              | Modern sans-serif | Modern sans-serif, Elegant serif   |
| body_font               | Modern sans-serif | Modern sans-serif, Elegant serif   |
| header_style            | Center aligned    | Center aligned, Left, aligned, Hidden |
| show_logo_in_navigation | false             | True, False                        |
| feed_layout             | Classic           | Classic, Grid, List                 |
| color_scheme            | Auto              | Light, Dark, Auto                   |
| post_image_style        | Wide              | Wide, Full, Small, Hidden            |

Kaschber also features several points to inject your custom code into the template. You can create
- `_includes/custom-head.html` to include custom css or any other tags which get rendered in the head section
- `_includes/custom-js.html` to include any additional Javascript at the bottom of your page
- `_includes/custom-post-content.html` to include any custom post-specific content which gets inserted in every post. E.g. a table of content tag

## Authors
To include author information, just create a folder called `_authors` and create your author information via markdown or html files. E.g.
```
---
username: Ghost
name: Casper Ghost
website: https://github.com/TryGhost/Casper/
bio: The professional publishing platform
picture: assets/images/ghost.png
facebook_url: ghost
twitter_url: tryghost
cover: False
---
```

## Tags
To create tags specifically, create a folder `_tags` and insert your tags there as markdown or html file. E.g.
```
name: speeches
description: Some of the greatest words ever spoken.
cover: assets/images/speeches.jpg
```

# Contribute
If you would like to contribute, please keep the files as closely as possible to the original Ghost handlebar files. This will make maintenance easier. This is also the reason why the files haven't been really broken down into smaller parts.

# Acknowledgements
This theme was heavily inspired by [Jasper2](https://github.com/jekyllt/jasper2).