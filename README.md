# Setup

## Before deployment
### Create a config\twilio.yml file as follows:

    twilio_id:     <account sid>
    twilio_secret: <auth token>
    twilio_phone:  +15555551212
    jims_phone:    +16666661212
    
The config/deploy.rb will upload the config/twilio.yml. Make sure it's in your .gitignore.

I'll eventually change it from jims_phone to something generic.