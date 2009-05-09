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
------------------
sudo gem install cms-lite


Add the gem to environment.rb
------------------
config.gem 'cms-lite', :lib => 'cms_lite'


Handy Rake Tasks
------------------
CMS Lite comes with rake tasks that can help you manage your project.  These include the ability to send all files from one language
to google for translation into 24 other languages.  To gain access to these tasks simple add the following lines to Rakefile:

  require 'cms_lite'
  require 'cms_lite/tasks'
  

Run rake task:
------------------
  rake cms_lite:setup 

then visit:
  http://localhost:3000/cmslite/hello-world
or 
  http://localhost:3000/cmslite-protected/hello-world


Translate your content with Google
------------------
  rake cms_lite:translate 
  
  Will translate all files in the 'en' directory into the following languages (codes):
  ar bg ca cs da de el en es fr hi id it ja pt-PT sk sr sv vi zh-CN
  
  If you wish to translate from another language -ie your content files are in the es directory then you can do this:
  rake cms_lite:translate -language=es

Notes:
------------------
1. CMS Lite Requires a login method called 'login_required' that will be called in the event the user is not logged in and attempts to load a protected page.
2. Don't mix directories it will mess up the routes.  ie if you have a directory named cmslite in pages don't create a directory called cmslite under protected-pages.
   If you do Rails won't know which directory to route to.

Layouts:
------------------
By default cms lite will look for a layout named 'application' and use that to render all pages.  You can override that behavior with an initializer.
Add a file to config/initializers and name it cms_lite.rb.  Add the following line to that file:

CmsLite.cms_layouts = { '/cms' => 'cms_template_', '/help' => 'help' }_

The line above will tell cms lite to render the 'cms_template' for any file located under '/content/pages/en/cms' and will also use the 'help' layout
for any pages located under '/content/pages/en/help'.  Modify the configuration to meet your needs.


Routes:
------------------
 CMS Lite will add a route for each subdirectory found under /content/pages/en and /content/protected-pages/en.

Example:
- - -
    Thus, a page found at:
       /content/pages/en/example/my-page.htm 
    becomes
       http://localhost:3000/example/my-page


The Basics
=================
The cms lite plugin provides basic template rendering functionality.  
Any templates added to /content/pages will be publicly visible.  
Any pages added to /content/protected-pages will require a login.
CMS lite will use the layout specified in application_controller.rb


Advanced Stuff
=================
The CMS Lite engine can display localization content.  To add spanish simply add an 'es' directory next to the 'en' directory
and then copy your content pages to that directory.




Copyright (c) 2009 Justin Ball, released under the MIT license
