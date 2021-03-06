module Api::NotesHelper
  def time_since_last_update(note)
    time = note.updated_at

    if time > 2.seconds.ago
      "1 second ago"
    elsif time > 1.minute.ago
      "#{(Time.now - time).to_i} seconds ago"
    elsif time > 2.minutes.ago
      "1 minute ago"
    elsif time > 1.hour.ago
      "#{((Time.now - time) / 60).to_i} minutes ago"
    elsif time > 1.days.ago
      "#{time_ago_in_words(time)[6..-1]} ago"
    elsif time > 2.days.ago
      "Yesterday"
    elsif time > 1.week.ago
      "#{time_ago_in_words(time)} ago"
    else
      time.strftime("%-m/%d/%y")
    end
  end
end
