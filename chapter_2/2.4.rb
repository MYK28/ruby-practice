#2.4
puts 10 #正の整数
puts 1.5 #少数
puts -3 #負の整数
puts -4.75 #負の少数

#大きな数の区切り文字として_を含めることができる _は表示されない
puts 1_000_000_000

puts 10 + 20 #足し算
puts 100 - 25 #引き算
puts 12 * 5 #掛け算
puts 20 / 5 #割り算
puts 8 % 3 #剰余演算子
puts 2 ** 3 #べき乗を求める演算子

#変数の手前に-をつけることで数値の正と負を反転させることができる
n = 1
puts -n

#整数同士の割り算は整数になる 小数点以下は切り捨て
puts 1 / 2

#小数点以下の値が必要な場合はどちらかの値に少数点の.0を付ける
puts 1.0 / 2
puts 1 / 2.0

#変数に整数が入っている場合は、to_fメソッドを呼ぶことで整数から少数に変更することができる
n = 1
puts n.to_f
puts n.to_f / 2

#2.4.1

puts 1 < 2
puts 1 <= 2
puts 1 > 2
puts 1 >= 2
puts 1 == 2
puts 1 == 1
puts 1 != 2

#2.4.2
#数学の四則演算と同じく、＊は/よりも優先順位が高い

puts 2 * 3 + 4 * 5 - 6 / 2

#()を使用すると優先順位を変えることができる

puts 2 * (3 + 4) * (5 - 6) / 2

#2.4.3
#Rubyでは+=と-=によって変数の値を増減させる

n = 1

#nを1増やす (n = n + 1と同じ) 
puts n += 1

n = 1

#nを-1減らす (n = n - 1と同じ)
puts n -= -1

n = 2

#nを3倍にする
puts n *= 3

#nを2で割る 67でnは6になっている
puts n /= 2

#nを2乗する 71でnは3になっている
puts n **= 2

#数値と文字列を+演算子で加算することはできないため.to_i(整数化).to_f(少数化)メソッドを使用して変換する必要がある

#整数に変換
puts 1 + 10.to_i

#少数に変換
puts 1 + 10.to_f

#文字列に数値を直接連結することもできないため.to_s(文字列化)メソッドを使用して変換する
#ただし、式展開(#{})を使った場合は、自動的に.to_sメソッドが呼ばれるため、文字列に変換する必要はない
number = 3
puts 'Number is' + number.to_s

number = 3
puts "Number is #{number}"
