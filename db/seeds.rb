User.create ([
	{fullname: "Elise Barnes", username: "barnese3", email: "barnese3@go.stockton.edu", password: "password123", image: "https://ca.slack-edge.com/T03JJLPSP-U6W7RCB34-g1a37e409440-1024"},
	{fullname: "Don Chiam", username: "donchiam", email: "don.chiam@gmail.com", password: "456password", image: "https://ca.slack-edge.com/T03JJLPSP-U6VUTD7UH-647172c98c2b-1024"}
])

BlogPost.create ([
	{title: "My First Blog Post", body: "This is my first blog post."},
	{title: "Hello, World! Your First JavaScript Programs", body: "Congratulations, you’ve just written your first JavaScript program! It might not look like much, but a wise person once said that every ninja programmer’s journey begins with a single line of code (or something like that, anyway!). JavaScript in the Browser JavaScript is an interpreted language and needs a host environment to run. Because of its origins, the main environment that JavaScript runs in is the browser, although it can be run in other environments; for example, our first program that we just wrote ran in the Node REPL. Node can also be used to run JavaScript on a server. By far the most common use of JavaScript is still to make web pages interactive. Because of this, we should have a look at what makes up a web page before we go any further.

			Three Layers of the Web - early all web pages are made up of three key ingredients ― HTML, CSS and JavaScript. HTML is used to mark up the content. CSS is the presentation layer, and JavaScript adds the interactivity.

			Each layer builds on the last. A web page should be able to function with just the HTML layer ― in fact, many websites celebrate “naked day” when they remove the CSS layer from their site. A website using just the HTML layer will be in its purest form and look very old school, but should still be fully functional.

			Keep These Layers Separate - It is widely considered best practice to separate the concerns of each layer, so each layer is only responsible for one thing. Putting them altogether can lead to very complicated pages where all of the code is mixed up together in one file, causing “tag soup” or “code spaghetti”. This used to be the standard way of producing a website and there are still plenty of examples on the web that do this."},
	{title: "Instant Form Validation Using JavaScript", body: "HTML5 introduces a couple of new attributes for implementing browser-based form validation. The pattern attribute is a regular-expression that defines the range of valid inputs for textarea elements and most types of input. The required attribute specifies whether a field is required. For legacy browsers that don’t implement these attributes, we can use their values as the basis of a polyfill. We can also use them to provide a more interesting enhancement – instant form validation.

We have to be very careful here not to get carried away, creating overly aggressive validation that breaks the natural browsing behavior and gets in people’s way. For example, I’ve seen forms where it’s impossible to Tab away from an invalid field – JavaScript is used (or rather abused) to force the focus to stay inside the field until it’s valid. This is very poor usability, and directly contravenes accessibility guidelines.

What we’re going to do in this article is far less intrusive. It’s not even full client-side validation – it’s just a subtle usability enhancement, implemented in an accessible way, which (as I discovered while testing the script) is almost identical to something that Firefox now does natively!"},
	{title: "The MVC Design Pattern in Vanilla JavaScript", body: "Design patterns often get incorporated into popular frameworks. The Model-View-Controller (MVC) design pattern, for example, is one that is ubiquitous. In JavaScript, it is hard to decouple the framework from the design pattern. Oftentimes, a particular framework will come with its own interpretation of this design pattern. Frameworks come with opinions and each one forces you to think in a certain way.

Modern frameworks dictate what the concrete implementation of the MVC pattern looks like. This is confusing when all interpretations are different, which adds noise and chaos. When any code base adopts more than one framework it creates a frustrating mess. The question in my mind is, is there a better way?

The MVC pattern is good for client-side frameworks, but modern frameworks change. What is modern today is subject to the passing of time and withers away. In this take, I’d like to explore alternatives and see where a little discipline takes us.

By itself, the MVC pattern dates back more than a few of decades. This makes it a good design pattern to invest your programming skills in. The MVC pattern is a design pattern that can stand on its own. The question is, how far can this take us?

Wait, Is This Yet Another Framework?
First, I’d like to dispel this common myth: a design pattern is not a framework. A design pattern is a disciplined approach to solving a code problem. There is a level of skill necessary and places the responsibility on the programmer. A design pattern separates concerns and promotes clean code.

A framework is different since it does not have to adhere to any design pattern. A way to tell a framework from a pattern is to look for the Hollywood principle. The Hollywood principle is, “don’t call us, we’ll call you.” Anytime there is a dependency that dictates when you use it, it is a framework. A framework is a lot like Hollywood in that you don’t get a say on what to do or how to do it. In fact, developers are like actors because they follow the script when asked to act."},
	{title: "Understanding Bootstrap Modals", body: "In my previous tutorial, I explained how powerful Bootstrap 3 CSS framework is for a novice designers. It ships with some of the best ready-to-use JavaScript and jQuery components and plugins. The framework has reached version 3.3.7 and it’s getting ready for the release of v.4 beta, which will bring about several important and necessary changes.

In this tutorial we will be talking about one of the most useful jQuery Bootstrap plugins, The Modal.

The Bootstrap Modal is a lightweight multi-purpose JavaScript popup that is customizable and responsive. It can be used to display alert popups, videos, and images in a website. Websites built with Bootstrap can use the modal to showcase (for example) terms and conditions (as part of a signup process), videos (similar to a standard light box), or even social media widgets.

Now let’s examine the different parts of Bootstrap’s modal, so we can understand it better.

The Bootstrap Modal is divided into three primary sections: the header, body, and footer. Each has its own significance and hence should be used properly. We’ll discuss these shortly. The most exciting thing about Bootstrap’s modal? You don’t have to write a single line of JavaScript to use it! All the code and styles are predefined by Bootstrap. All that’s required is that you use the proper markup and the attributes to trigger it."},
	{title: "How You Can Use HTML5 Custom Data Attributes and Why", body: "Why Custom Data Attributes?
Very often we need to store information associated with different DOM elements. This information might not be essential for readers, but having easy access to it would make life a lot easier for us developers.

For instance, let’s say you have a list of different restaurants on a webpage. Before HTML5, if you wanted to store information about the type of food offered by restaurants or their distance from the visitor, you would have used the HTML class attribute. What if you also needed to store the restaurant id to see which particular restaurant the user would want to visit?

Here are a few problems with the approach based on the HTML class attribute.

The HTML class attribute is not meant to store data like this. Its main purpose is to allow the developer to assign style information to a set of elements.
Each additional piece of information requires us to add a new class to our element. This makes it harder to parse the data in JavaScript to actually get what we need.
Let’s say a given class name begins with numbers. If you decide to later style the elements based on that data in the class name, you will have to either escape the number or use attribute selectors in your stylesheet.
To get rid of these issues, HTML5 has introduced custom data attributes. All attributes on an element whose name starts with data- are data attributes. You can also use these data attributes to style your elements.

Next, let’s dive into the basics of data attributes and learn how to access their values in CSS and JavaScript."},
	{title: "JavaScript: 2016 in Review", body: "This article was peer reviewed by Joan Yin, Scott Molinari and Julian Motz. Thanks to all of SitePoint’s peer reviewers for making SitePoint content the best it can be!

2016 has been a monumental, bizarre, and somewhat jubilant/terrifying year depending on your outlook. To concentrate on JavaScript alone may seem inconsequential compared to other events, but it’s a huge part of every web developer’s working life.

JavaScript popularity continues to explode. Not everyone loves the language, but you rarely hear the derisive comments of a decade ago. Personally, I’ve always loved JavaScript — even in the early, frustrating years. Those approaching it from a C++, Java or PHP direction can be confused at first: JavaScript looks familiar, but isn’t. Overcome your presumptions and you’ll appreciate its simple elegance, practicality and flexibility. (That said, date handling is still a nightmare!)

JavaScript celebrated its 21st birthday in May, so let’s look back at its first year of adult maturity …

ECMAScript Evolution
ES6/2015 was the most significant update to the language since its birth. The specification took seven years to complete, but browsers and runtimes are finally starting to support arrow functions, let, const, proxies and more delights. The ES6 compatibility table is turning a glorious shade of green.

Perhaps it’s a little early to fully switch to ES6 if you’re supporting older browsers. By older, I mean anything released more than a year ago. You can use an ES6-to-ES5 compiler such as Babel, but development is complicated enough without introducing an additional build step.

ES7/2016 is more evolution than revolution. One exciting new feature is async, which allows asynchronous code to be written in a synchronous manner without the syntactical complexities of callbacks or Promises (which continue to confuse me).

Progressive Web Apps
My favorite JavaScript-based technology of 2016 is awarded to Progressive Web Apps. PWAs were announced in Google’s 2015 Chrome Dev Summit, but stable technologies and tools finally arrived in Chrome 52 in July. PWAs permit offline-first functionality and supersede flaky AppCache methods. Web apps can finally compete with native apps and offer the benefits of:

a home screen icon
fast launching and custom splash screens
snappy execution
offline functionality without an internet connection
URLs, linking and bookmarking
full-screen or themed interfaces
sandboxed execution
local and/or cloud-based storage with synchronization
fewer device space and processing resources
better security (HTTPS is a prerequisite)
easy discovery from any search engine
try before you install
simpler deployment: it’s just a web app
no AppStore nonsense: your app can contain whatever nudity and swearing you desire without someone demanding 30% of your profits!
Best of all: any website or application can be transformed into a PWA within a few hours. The steps:

Enable HTTPS on your server.
Create an application manifest — a JSON file in your application root which defines the name, colors, icons and display options.
Create a Service Worker — a JavaScript file in your root which intercepts network calls and can return cached or live data as necessary.
It’s early days, and examples are rare, but PWAs offer an amazing opportunity to “mobilify” your web applications. Admittedly, there’s no guarantee Apple will implement the technology, but it shouldn’t matter: your app will still work in Safari, it just won’t benefit from offline execution. I have a feeling Apple will be encouraged to support PWAs once the web experiences becomes noticeably superior on Android.

For more information, see Dev.Opera’s Progressive Web Apps: The definitive collection of resources and Google’s PWA Guides."},
	{title: "Build a CRUD App Using React, Redux and FeathersJS", body: "For a high-quality, in-depth introduction to React, you can’t go past Canadian full-stack developer Wes Bos. Try his course here, and use the code SITEPOINT to get 25% off and to help support SitePoint.

Building a modern project requires splitting the logic into front-end and back-end code. The reason behind this move is to promote code re-usability. For example, we may need to build a native mobile application that accesses the back-end API. Or we may be developing a module that will be part of a large modular platform.

The popular way of building a server-side API is to use a library like Express or Restify. These libraries make creating RESTful routes easy. The problem with these libraries is that we’ll find ourselves writing a ton of repeating code. We’ll also need to write code for authorization and other middleware logic.

To escape this dilemma, we can use a framework like Loopback or Feathers to help us generate an API.

At the time of writing, Loopback has more GitHub stars and downloads than Feathers. Loopback is a great library for generating RESTful CRUD endpoints in a short period of time. However, it does have a slight learning curve and the documentation is not easy to get along with. It has stringent framework requirements. For example, all models must inherit one of its built-in model class. If you need real-time capabilities in Loopback, be prepared to do some additional coding to make it work."},
	{title: "KeystoneJS: The Best Node.js Alternative to WordPress", body: "KeystoneJS is a content management system and framework to build server applications that interact with a database. It is based on the Express framework for Node.js and uses MongoDB for data storage. It represents a CMS alternative for web developers who want to build a data-driven website but don’t want to get into the PHP platform or large systems like WordPress.

Although WordPress can be set up by not so technical users, KeystoneJS offers the control needed for professional ones to develop new websites—although it is still considerably easier to work with KeystoneJS than manually building your website from scratch. It not only offers a platform to build websites; you can replace almost everything on it and develop more specialized systems like applications and APIs."},
	{title: "Using MySQL with Node.js & the mysql JavaScript Client", body: "NoSQL databases are all the rage these days and probably the preferred back-end for Node.js applications. But you shouldn’t architect your next project based on what’s hip and trendy, rather the type of database to be used should depend on the project’s requirements. If your project involves dynamic table creation, real time inserts etc. then NoSQL is the way to go, but on the other hand, if your project deals with complex queries and transactions, then a SQL database makes much more sense.

In this tutorial, we’ll have a look at getting started with the mysql module — a Node.js driver for MySQL, written in JavaScript. I’ll explain how to use the module to connect to a MySQL database, perform the usual CRUD operations, before examining stored procedures and escaping user input.

This popular tutorial was updated on 11.07.2017. Changes include updating to ES6 syntax, addressing the fact that the node-mysql module was renamed, adding more beginner friendly instructions and adding a section on ORMs.
Quick Start: How to Use MySQL in Node
Maybe you’ve arrived here looking for a quick leg up. If you’re just after a way to get up and running with MySQL in Node in as little time as possible, we got you covered!

Here’s how to use MySQL in Node in 5 easy steps:

Create a new project: mkdir mysql-test && cd mysql-test
Create a package.json file: npm init –y
Install the mysql module: npm install mysql –save
Create an app.js file and copy in the snippet below.
Run the file: node app.js. Observe a “Connected!” message."}
])