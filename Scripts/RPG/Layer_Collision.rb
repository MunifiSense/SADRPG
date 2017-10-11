class Game_Map
  #--------------------------------------------------------------------------
  # * Check Passage
  #     bit:  Inhibit passage check bit
  #--------------------------------------------------------------------------
  def check_passage(x, y, bit)
    all_tiles(x, y).each do |tile_id|
      flag = tileset.flags[tile_id]
      next if flag & 0x10 != 0            # [star]: No effect on passage
      next if flag >> 12 == 1             # ignore passability on terrain 1
      return true  if flag & bit == 0     # [O] : Passable
      return false if flag & bit == bit   # [x] : Impassable
    end
    return false                          # Impassable
  end
end