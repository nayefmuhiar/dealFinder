## Intended functionality of the app:
  A simple app that consumes an api endpoint and displays the most relevant information to the user

## Thought process and main notes
  *Choice of Rails framework to freshen up my skills. Although I have 2.5 years of experience in RoR, I haven't done any programming in the past 5 months or so.
  
  *A better technical choice would have been Sinatra since I want to build an app that simply conusmes an API and shows results. Rails has many features I am not currently using

  *Used Haml because of personal preference of the syntax over HTML, the perfroamnce loss is negligible since it is a test app

  *Loaded Bootstrap from CDN to ease the process

  *HTTParty for the easier syntax, ran into an issue with base_uri and I did it manually as a workaround, could be an issue with rails 5 compatibility.

  *I added a class named ApiConsumer to encapsulate the api consumption to one place in the app

  *Added multiple partials to breakdown views into manageable chunks and to keep the code DRY and reusable

  *Used helper methods to reduce logic used within the view file itself

  *App builds and tests on Travis-CI

## Challenges
  *Working with an API without API docs, things are always vague to some degree
  
  *Having not done development for a while really brought to my attention that this skill is one I need to practice more often.