def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_data|
    if contestant_data["status"].downcase == "winner"
      return contestant_data["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant_list|
    contestant_list.each do |contestant_data|
      if contestant_data["occupation"] == occupation
        return contestant_data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestant_list|
    contestant_list.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season, contestant_list|
    contestant_list.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        return contestant_data["occupation"]
      end
    end
  end
end

#cannot get this to round up for season 10!

def get_average_age_for_season(data, season)
  age = 0
  count = 0
  data[season].each do |contestant_data|
    age += (contestant_data["age"]).to_f
    count += 1
  end
  (age / count).round
end
