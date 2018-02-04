puts "Please input : "
def func(input)
  tmp_input = input
  i= 0
  money = [1000.00,500.00,100.00,50.00,20.00,10.00,5.00,2.00,1.00,0.50,0.25]
  tmp_money = [0,0,0,0,0,0,0,0,0,0,0]
  total_tmp = 0
  cross_check = "false"
  while i<11  do
    
    tmp_money[i] = (input/money[i]).to_i
    total = tmp_money[i]*money[i]
    total_tmp = total_tmp+total
    input= input-total
    if (i<5) 
    puts "แบงค์  THB    #{'%.2f' %money[i]}    จำนวน #{tmp_money[i]}    ใบ  เป็นเงิน THB  #{total}    คงเหลือ THB  #{'%.2f' %input}"
    else
    puts "เหรียญ  THB    #{'%.2f' %money[i]}    จำนวน #{tmp_money[i]}    เหรียญ  เป็นเงิน THB  #{total}    คงเหลือ THB #{'%.2f' %input}"
    end 
    i=i+1
  end
  if(input+total_tmp == tmp_input)
    cross_check = "true"
  end
  puts " "
  puts "รวม  THB #{'%.2f' %total_tmp}   เศษ THB #{'%.2f' %input}   cross-check : #{cross_check}"

end


input = gets.chomp.to_f

if(input<0.00 || input == 0.00) #because if input is a string value of input is 0
  puts "input failed"

else
  puts "จำนวน THB #{input.to_f}" 
  func(input)
  
end
