CMS Lite Engine
=================
CMS Lite makes it simple to add lots of content to your rails application without having to add a full CMS system.  Frequently,
the parties involved in developing your website will have enough technical knowledge to be able to build html pages and add 
content, but not be experienced enough to build out new controllers and deal with rendering the appropriate templates.  CMS Lite 
addresses this need by centralizing all content into a 'content' subdirectory.  Tell
your content developers to put their code into /content/pages/en or /content/protected-page/en (for content that requires a login) 
and you're ready to go.

Installation
=================
Install the gem:

CMS Lite Requires a login method called 'login_required' that will be called in the event the user is not logged in and 
attempts to load a protected page.

Routes:
------------------
 CMS Lite will add a route for each subdirectory found under /content/pages/en.
 
 
Example:
- - -
    Place test_me.html into /content/pages/en/cms/test_me.html
    Visit
    http: http://localhost:3000/cms/test_me
      
The Basics
=================
The cms lite engine provides basic template rendering functionality.  
Any templates added to /content/pages will be publicly visible.  
Any pages added to /content/protected-pages will require a login.
CMS lite will use the layout specified in application_controller.rb


Advanced Stuff
=================
The CMS Lite engine can display localization content.  To add spanish simply add an 'es' directory next to the 'en' directory
and then copy your content pages to that directory.


Copyright (c) 2009 Justin Ball, released under the MIT license
