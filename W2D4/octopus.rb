def sluggish(array)
  array.each do |fish1|
    long = true
    array.each do |fish2|
      long = false if fish2.length > fish1.length
    end
    return fish1 if long
  end
end

def dominant(array)
  merge_sort(array)[0]

end

def merge_sort(array)
  count = array.length
  return array if count <= 1

  mid = count / 2
  left = merge_sort(array.take(mid))
  right = merge_sort(array.drop(mid))

  merge(left, right)
end

def merge(left, right)
  merged = []

  until left.empty? || right.empty?
    if left.first.length > right.first.length
      merged << left.shift
    else
      merged << right.shift
    end
  end

  (merged + left + right)
end

def clever(array)
  long = ""
  array.each do |fish|
    if long.length < fish.length
      long = fish
    end
  end
  long
end

def slow(array, string)
  array.each_with_index {|tile, i| return i if tile == string }
end

def constant(hash, string)
  hash[string]
end

fish_size = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
p sluggish(fish_size)
p dominant(fish_size)
p clever(fish_size)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
p slow(tiles_array,"right-down")
p slow(tiles_array,"up")

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}
p constant(tiles_hash,"right-down")
p constant(tiles_hash,"up")
