plans = [
    { name: "沖縄旅行", price: 10000 },
    { name: "北海道旅行", price: 20000 },
    { name: "九州旅行", price: 15000 }
  ]
  
  puts "旅行プランを選択してください"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}.#{plan[:name]}" "(¥#{plan[:price]})"
  end
  
  selected_num = gets.to_i
  puts "プランを選択 >" "#{selected_num}"
  
  case selected_num
  when 1
    puts "#{plans[selected_num - 1 ][:name]}ですね、何人で行きますか？"
  when 2
    puts "#{plans[selected_num - 1 ][:name]}ですね、何人で行きますか？"
  when 3
    puts "#{plans[selected_num - 1 ][:name]}ですね、何人で行きますか？"
  end
  
  people_num = gets.to_i
  puts "人数を入力 > " "#{people_num}"
  
  if people_num >= 5
    puts "5人以上なので10%割引になります" 
  end
  
  total0 = plans[0][:price] * people_num
  total1 = plans[1][:price] * people_num
  total2 = plans[2][:price] * people_num
  
  if selected_num == 1 && people_num <= 4
    puts "合計金額:¥#{total0}"
  elsif selected_num == 2 && people_num <= 4
    puts "合計金額:¥#{total1}"
  elsif selected_num == 3 && people_num <= 4
    puts "合計金額:¥#{total2}"
  elsif selected_num == 1 && people_num >= 5
    puts "合計金額:¥#{total0 * 0.9}"
  elsif selected_num == 2 && people_num >= 5
    puts "合計金額:¥#{total1 * 0.9}"
  elsif selected_num == 3 && people_num >= 5
    puts "合計金額:¥#{total2 * 0.9}"
  end