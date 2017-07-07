
def get_first_name_of_season_winner(data, season)
  str = ''
  data.each do |season_num , girl_hash|
    if season == season_num.to_s
      girl_hash.each do |girl|
        girl.each do |category, details|
          str+= details
        end
      end
    end
  end
  answer = str.split(' ')[0]
  return answer
end

def get_contestant_name(data, occupation)
  str = ''
  data.each do |season_num , girl_hash|
   girl_hash.each do |el|
     el.each do |a,b|
       if occupation == b.to_s
         str+= el["name"]
      end
     end
    end
  end
  str
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, array_of_girl_hashes|
    array_of_girl_hashes.each do |girl|
      girl.each do |category, answer|
        if answer == hometown
          count += 1
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  str = ''
  data.each do |season, array_of_girl_hashes|
    array_of_girl_hashes.each do |girl|
      girl.each do |category, answer|
        if answer == hometown
          str += girl["occupation"]
          return str
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  count = 0
  num_of_girls = 0
  data.each do |season_num, array_of_girl_hashes|
    if season_num == season
      array_of_girl_hashes.each do |girl|
        num_of_girls += 1
        count += girl["age"].to_i
      end
    end
  end
  num = count/25.to_f
  num.round
end
