require 'zengin_code'

ZenginCode::Bank.all.each do |original_code, original_bank|
  puts "== #{original_code}:#{original_bank.name}"
  bank = Bank.find_or_initialize_by(code: original_code)
  bank.name = original_bank.name
  bank.name_kana = original_bank.kana
  bank.name_hira = original_bank.hira
  bank.name_en = original_bank.roma
  bank.touch unless bank.new_record?
  bank.save!

  original_bank.branches.each do |original_code, original_branch|
    puts "-- #{bank.code}:#{bank.name} #{original_code}:#{original_branch.name}"
    branch = bank.branches.find_or_initialize_by(code: original_code)
    branch.name = original_branch.name
    branch.name_kana = original_branch.kana
    branch.name_hira = original_branch.hira
    branch.name_en = original_branch.roma
    branch.touch unless branch.new_record?
    branch.save!
  end
end

puts "Bank: #{Bank.count}, Branch: #{Branch.count}"
