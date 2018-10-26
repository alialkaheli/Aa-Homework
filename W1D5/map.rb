class Map
  attr_reader :map_arr
  def initialize
    @map_arr = []
  end

  def set(key,value)
    arr_idx = map_arr.index { |arr| arr[0] == key}
    if arr_idx != nil
      map_arr[arr_idx][1] = value
    else
      map_arr << [key,value]
    end
    value

  end

  def get(key)
    map_arr.each{ |arr| return arr[1] if arr[0] == key}
    nil

  end

  def delete(key)
    value = get(key)
    arr.reject! { |pair| pair[0] == key }
    value
  end

  def show
    map_arr
  end
end
