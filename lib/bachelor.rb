def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
      contestant.each do |key, value|
        if value == "Winner"
         answer = contestant["name"]
          return answer.split(' ').first
     end
   end
 end
 end

def get_contestant_name(data, occupation)
  data.each do |season, cast|
    cast.each do |contestant|
      contestant.each do |key, value|
      if value == occupation
        return contestant["name"]
      end
    end
  end
end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, cast|
    cast.each do |contestant|
      contestant.each do |key, value|
        if value == hometown
          counter += 1
        end
      end
    end
  end
  counter
  # code here
end

def get_occupation(data, hometown)
  data.each do |season, cast|
    cast.each do |contestant|
      contestant.find do |key, value|
        if value == hometown
          return contestant["occupation"]
        end
      end
    end
  end
  # code here
end

def get_average_age_for_season(data, season)
  age_array = []
  data[season].each do |contestant|
    contestant.each do |key, value|
      if key == "age"
        age_array << contestant["age"].to_f
      end
    end
  end
  answer = (age_array.reduce(:+) / age_array.size.to_f).round
  return answer
end
