notes

terminal: git checkout master
terminal: git checkout –b <new branch>


 <header class="navbar navbar-fixed-top navbar-inverse">
 # 3 header labels separated by a space.

     <li><%= link_to "Home",   '#' %></li>
<!DOCTYPE html>
<html>
  <head>
    <title><%= full_title(yield(:title)) %></title>
    <%= stylesheet_link_tag 'application', media: 'all',
                                           'data-turbolinks-track' => true %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track' => true %>
    <%= csrf_meta_tags %>
    // this is all embedded ruby, as designated by <% code %> //
    <!--[if lt IE 9]>
      <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/r29/html5.min.js">
      </script>
    <![endif]-->
    //HTML shim is javascript code that gets around the fact that HTML5 isn’t supported on older browsers//

  </head>
  <body>
    <header class="navbar navbar-fixed-top navbar-inverse">
      <div class="container">
        <%= link_to "sample app", '#', id: "logo" %>
        <nav>
          <ul class="nav navbar-nav pull-right">
            <li><%= link_to "Home",   '#' %></li>
            <li><%= link_to "Help",   '#' %></li>
            <li><%= link_to "Log in", '#' %></li>
          </ul>
        </nav>
      </div>
    </header>
    <div class="container">
      <%= yield %>
    </div>
  </body>
</html>

have to still fill in the named routes.
"#" is the common stub URL in websites like a placeholder.
often give you options hashes so you can be flexible.
We're using bootstrap created by Twitter. container means something special for bootstrap.


<div class="center jumbotron">
  <h1>Welcome to the Sample App</h1>

  <h2>
    This is the home page for the
    <a href="http://www.railstutorial.org/">Ruby on Rails Tutorial</a>
    sample application.
  </h2>

  <%= link_to "Sign up now!", '#', class: "btn btn-lg btn-primary" %>
</div>

<%= link_to image_tag("rails.png", alt: "Rails logo"),
            'http://rubyonrails.org/' %>
            creates a link to an image and an alternative options hash if it doesn't load called "Rails logo"

a unique ID created by rails ensures that the image gets uploaded every time rather than having to be stored in the computer's cache. 

bootsrap also has a special meaning for btn, btn-lg and btn-primary, as well as center jumbotron

bootstrap is created in Less CSS language, but rails supports the similar Sass language so the bootstrap-sass download converts bootstrap into sass.

to link to css stylesheets, we use: touch app/assets/stylesheets/custom.css.scss
css tells us it's a css file, and scss stands for "Sassy CSS"

bundle install installs the dependancies that you've indicated in your Gemfile.

elements we tag with center will be centered

a partial is a file that connects blocks of code to an additional site, like a shim.

Asset Pipeline:
 - Asset Directories
 - Manifest Files
 - Preprocessor Engines

Asset Directories
    app/assets: assets specific to the present application
    lib/assets: assets for libraries written by your dev team
    vendor/assets: assets from third-party vendors 
Each has subdirectories.  app/assets might have /javascripts, /images, /stylesheets

Minfest Files
Tells rails how to put the parts of the files together to a single file with the sprocket gem.

manifest file for app-specific CSS: app/assets/stylesheets/application.css
 *= require_tree .
 *= require_self

Preprocessor Engines
File extensions such as .scss, .coffee and .erb tell rails what engine to run.  These are most common.
You can chain them, so that blah.js.erb.coffee would run through the coffeescript engine first, then the embedded ruby engine.

Sass CSS allows us to improve on CSS. It offers: nesting, variables and mixins.
.scss only adds features, but doesn't take away any functionality of CSS. 

Nesting: 
Unnested:
#logo {
  float: left;
  margin-right: 10px;
  font-size: 1.7em;
  color: #fff;
  text-transform: uppercase;
  letter-spacing: -1px;
  padding-top: 9px;
  font-weight: bold;
}

#logo:hover {
  color: #fff;
  text-decoration: none;
}

Nested:
#logo {
  float: left;
  margin-right: 10px;
  font-size: 1.7em;
  color: #fff;
  text-transform: uppercase;
  letter-spacing: -1px;
  padding-top: 9px;
  font-weight: bold;
  &:hover {
    color: #fff;
    text-decoration: none;
  }
}



