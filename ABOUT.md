Choice of Rails framework so frechen up my skills
A better technical choice would have been Sinatra since I want to build an app that simply conusmes an API and shows results. Rails has many features I am not currently using

Used Haml because of personal preference of the syntax over HTML, the perfroamnce loss is negligible since it is a test app

Loaded Bootstrap from CDN to ease the process

HTTParty for the easier syntax

ApiConsumer class to encapsulate the api consumption from one place in the app

Partials to breakdown views into manageable chunks and to keep the code DRY and reusable

Helper to reduce logic used within the view itself