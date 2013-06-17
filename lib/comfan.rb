require "comfan/version"

module Comfan
  extend self

  def api_id input_id
    return input_id if input_id.nil? || input_id.length >= 18
    suffix = ''
 
    3.times do |i|
      flags = 0
      5.times do |j|
        c = input_id[i * 5 + j]
        if c.upcase == c && c >= 'A' && c <= 'Z'
          flags = flags + ( 1 << j )
        end
      end
      suffix += 'ABCDEFGHIJKLMNOPQRSTUVWXYZ012345'[flags]
    end
    input_id + suffix
  end

  def ui_id input_id
    return input_id if input_id.nil? || input_id.length <= 15

    input_id[0..-4]
  end
end