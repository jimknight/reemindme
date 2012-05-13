xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Reminders"
    xml.description "Lots of reminders"
    xml.link "http://reemindme.com/reminders.rss"
    
    for reminder in @reminders
      xml.item do
        xml.title reminder.title
        xml.pubDate reminder.time.to_s(:rfc822)
        xml.link "http://reemindme.com/reminders.rss"
        xml.guid "http://reemindme.com/reminders.rss"
      end
    end
  end
end