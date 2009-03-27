CMS Lite Engine
=================
CMS Lite makes it simple to add lots of content to your rails application without having to add a full CMS system.  Frequently,
the parties involved in developing your website will have enough technical knowledge to be able to build html pages and add 
content, but not be experienced enough to build out new controllers and deal with rendering the appropriate templates.  CMS Lite 
addresses this need by centralizing all content into a 'content' subdirectory (you can also add other paths).  Tell
your content developers to put their code into /content/pages or /content/protected-page (for content that requires a login) 
and you're ready to go.

Installation
=================
Get the plugin:

CMS Lite Requires a login method called 'login_required' that will be called in the event the user is not logged in and 
attempts to load a protected page.

Setup your routes:
------------------

Default routes:
------------------
    map.connect '/content/*content_page', :controller => 'cmslite', :action => 'show_page'
    map.protected_page '/protected/*content_page', :controller => 'cmslite', :action => 'show_protected_page'

*b Example:
    Place test_me.html into /content/pages/test_me.html
    Visit
    http: http://localhost:3000/content/test_me

Root route:
------------------
You can render pages directly off the root of the website by adding the following route:

    map.content "/*content_page", :controller => "cmslite", :action => "show_page"

Note that this route should be placed at the bottom of your routes file.  It will override the default Rails
routes so use it with caution.

Custom routes:
------------------
Add a custom route like this:
    map.help '/help/*content_page', :controller => 'cmslite', :action => 'show_page'


*b Example:
    Place help_me.html into /content/pages/help_me.html
    Visit
    http: http://localhost:3000/help/help_me

*b Note that you can use custom routes instead of the default routes if you prefer to not place your content 
under the '/content' url path.  You would still place your pages into 'RAILS_ROOT/content/pages'.

      
The Basics
=================
The cms lite engine provides basic template rendering functionality.  
Any templates added to /content/pages will be publicly visible.  
Any pages added to /content/protected-pages will require a login.


Advanced Stuff
=================
If you prefer to place you content in a location other than 'RAILS_ROOT/content/pages' you can add a new 
path to CMS lite using:

    prepend_cms_lite_path(path)

Or

    append_cms_lite_path(path)


Copyright (c) 2009 Justin Ball, released under the MIT license
