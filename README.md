# Setup

## Before deployment
### Create a config\twilio.yml file as follows:

    twilio_id:     <account sid>
    twilio_secret: <auth token>
    twilio_phone:  +15555551212
    jims_phone:    +16666661212
    
The config/deploy.rb will upload the config/twilio.yml. Make sure it's in your .gitignore.

I'll eventually change it from jims_phone to something generic.

### Gotchas
#### /bin/bash: bundle: command not found
Found a solution to setting the path in schedule.rb in this gist

[https://gist.github.com/950975](http://url.com/ "gist")

# Todo
## After notification sent for daily, mark as processed and stop running
