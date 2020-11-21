require 'spreadsheet'

# Open source spreadsheet
workbook = Spreadsheet.open 'outputs.xls'

def read_file sheet
  sheet.each do |row|
    puts "#{row[1]} - #{row[2]} - #{row[3]}"
  end
end
puts '----------Facil------------'
# Specify a single worksheet by index => basic block
sheet1 = workbook.worksheet 0
read_file(sheet1)
puts '----------Intermedio------------'
# Specify a single worksheet by index => middle block 
sheet2 = workbook.worksheet 1
read_file(sheet2)
puts '----------Dificil------------'
# Specify a single worksheet by index => hard block 
sheet3 = workbook.worksheet 2
read_file(sheet3)

puts '----------Fin------------'

# Loop over each worksheet
#workbook.worksheets.each do |sheet|
#  sheet.each do |row|
#    puts "#{sheet.name} --> #{row[0]} - #{row[1]} - #{row[2]}"
#  end
#end