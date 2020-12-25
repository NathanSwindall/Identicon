defmodule Playground3 do
    def keyword do
        keywordlist = [{:a, 1}, {:b, 2}] 
        keywordlist == [a: 1, b: 2]
    end

    def myMap do 
        map = %{:a => 1, 2 => :b}
        map2 = Map.put(map, :c,3)
        map2
    end


end
