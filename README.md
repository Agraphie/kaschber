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
You can specifiy these customisation options in your `_config.yml` for site-wide options

| Config                  | Default           | Options                           |
|-------------------------|-------------------|-----------------------------------|
| title_font              | System default    | Elegant serif                     |
| body_font               | System default    | Modern sans-serif                 |
| header_style            | Center aligned    | Center aligned, Left, aligned, Hidden |
| show_logo_in_navigation | false             | True, False                        |
| feed_layout             | Classic           | Classic, Grid, List                 |
| color_scheme            | Auto              | Light, Dark, Auto                   |
| post_image_style        | Wide              | Wide, Full, Small, Hidden            |
| navigation_layout       | Logo on cover     | Logo on cover, Logo in the middle, stacked | 

You can specifiy these additional customisation options per post or in the default section for posts `_config.yml`
| Config                  | Default           | Options                           |
|-------------------------|-------------------|-----------------------------------|
| show_recent_posts_footer | True | True, False   |
| post_image_style        | Wide              | Wide, Full, Small, Hidden            |
| custom_excerpt        | ""              | <Your custom excerpt shown on the page and the post card>           |

Kaschber also features several points to inject your custom code into the template. You can create
- `_includes/custom-head.html` to include custom css or any other tags which get rendered in the head section
- `_includes/custom-js.html` to include any additional Javascript at the bottom of your page
- `_includes/custom-post-content.html` to include any custom post-specific content which gets inserted in every post. E.g. a table of content tag

### Navigation
Per default, Kaschber will include all files in your root folder in the header navigation bar. You can customise this with the setting `header_pages` in your `_config.yml`. E.g.

```
header_pages:
  - my_page.md
  - about.md
```

### Colours
You can overwrite any colours and styles by just adding css files and include them in your `custom-head.html`. To overwrite the default accent colour #ff0095, do the following
1. Create a file in your assets folder with the following content
```css
:root {
  --ghost-accent-color: #6D7C86;
}
```
2. Create `custom-head.html` in your `_includes` folder
3. Include the new css file in your `custom-head.html`

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

Then include the following Jekyll config in your `_config.yml`
```
collections:
  authors:
    output: true

defaults:
  - scope:
      path: ""
      type: "authors"
    values:
      layout: author
      current: author
      cover: false
      class: 'author-template'
      label: Author
```

## Tags
To create tags specifically, create a folder `_tags` and insert your tags there as markdown or html file. E.g.
```
name: speeches
description: Some of the greatest words ever spoken.
cover: assets/images/speeches.jpg
```

Then include the following Jekyll config in your `_config.yml`
```
collections:
  tags:
    output: true

defaults:
  - scope:
      path: ""
      type: "tags"
    values:
      layout: tag
      current: tag
      cover: false
      class: 'tag-template'
      label: Tag
```

# Contribute
If you would like to contribute, please keep the files as closely as possible to the original Ghost handlebar files. This will make maintenance easier. This is also the reason why the files haven't been really broken down into smaller parts.

## Build
To build the files locally, you have to have npm and gulp installed.
```
$ gulp build
```

To test your changes locally execute
```bash
$ gem build
$ gem install kaschber-<current-version-in-gemspec>
```


# Acknowledgements
This theme was heavily inspired by [Jasper2](https://github.com/jekyllt/jasper2).