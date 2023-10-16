###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i

    # insert result at the right position
    is_inserted = false

    # Iterate through the result array to find the correct position
    result.each_with_index do |val, i|
        if i_arg < val
            result.insert(i, i_arg)
            is_inserted = true
            break
        end
    end

    # If it wasn't inserted, add it to the end
    result << i_arg unless is_inserted
end

puts result
