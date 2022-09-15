def day_of_week
    Date::DAYNAMES[Time.now.wday]
  end