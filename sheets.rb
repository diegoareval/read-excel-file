require 'spreadsheet'

# Open source spreadsheet
workbook = Spreadsheet.open 'sheet1.xls'

# Specify a single worksheet by index
sheet1 = workbook.worksheet 0
sheet1.each do |row|
  puts "#{row[0]} - #{row[1]} - #{row[2]}"
end
puts '----------------------' 
sheet1 = workbook.worksheet 1
sheet1.each do |row|
  puts "#{row[0]} - #{row[1]} - #{row[2]}"
end

puts '----------------------'

# Loop over each worksheet
#workbook.worksheets.each do |sheet|
#  sheet.each do |row|
#    puts "#{sheet.name} --> #{row[0]} - #{row[1]} - #{row[2]}"
#  end
#end