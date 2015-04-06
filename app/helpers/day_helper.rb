module DayHelper
  DAY_GREETINGS = [
    ["hoje", "Portuguese"],
    ["hoy", "Spanish"],
    ["aujourd'hui", "French"],
    ["i dag", "Swedish"],
    ["heute", "German"]
  ].freeze

  def day_class(day)
    if day.today?
      "day--today"
    elsif day.yesterday?
      "day--yesterday"
    end
  end

  def day_greeting
    greeting = DAY_GREETINGS.sample

    { word: greeting.first, language: greeting.second}
  end
end
