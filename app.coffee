Pages = new Meteor.Collection 'pages'

if Meteor.isServer
  Meteor.startup ->
    # Pages.remove {}
    if Pages.find().count() == 0
      Pages.insert
        head: 'Hello'
        body: 'This is a <a href="#">Weekee</a> page.'
      Pages.insert
        head: 'Weekee'
        body: 'Weekee is the simplest Wiki <a href="#">software</a> available. It has been developed using the rapid application development framework Meteor.'
      Pages.insert
        head: 'Software'
        body: 'Software is ...'

if Meteor.isClient
  window.Pages = Pages

  Template.ui.pages = -> Pages.find {}
