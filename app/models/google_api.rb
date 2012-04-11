class GoogleApi
  
  def self.create_event
    #https://www.googleapis.com/calendar/v3/calendars/calendarId/events
    # fields = { :start => { :date => "2012-03-27" }, :end => { :date => "2012-03-27", :summary => "from rails" } }
    #   RestClient.post 'https://www.googleapis.com/calendar/v3/calendars/ibmlotusnotes%40gmail.com/events?pp=1&key=AIzaSyDIqjHqOUiuWIargB6L7K-vY7HZGWu0ioU', fields
   require 'google/api_client'
    client = Google::APIClient.new

    event = {
      'summary' => 'Appointment',
      'location' => 'Somewhere',
      'start' => {
        'dateTime' => '2012-06-03T10:00:00.000-07:00',
        'timeZone' => 'America/Los_Angeles'
      },
      'end' => {
        'dateTime' => '2012-06-03T10:25:00.000-07:00',
        'timeZone' => 'America/Los_Angeles'
      },
      'recurrence' => ['RRULE:FREQ=WEEKLY;UNTIL=20110701T100000-07:00']
    }
    client.execute(:api_method => service.events.insert,
                            :parameters => {'calendarId' => 'primary'},
                            :body => JSON.dump(event),
                            :headers => {'Content-Type' => 'application/json'})
    
  end

end



