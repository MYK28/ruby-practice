#2.5.1
#falseまたはnilであれば偽
#それ以外はすべて真

#データのある/なしで処理を変えたい場合、他の言語では次のようなコードになる
#find_dataは架空のメソッド
# data = find_data
# if data != nil
#   'データがあります'
# else
#   'データはありません'
# end

# #Rubyの場合、falseとnil以外はすべて真なので、次のようにシンプルに書ける
# #find_dataは架空のメソッド
# data = find_data
# if data
#   'データがあります'
# else
#   'データはありません'
# end

#2.5.2
#論理演算子

#条件1 && 条件2は条件1かつ条件2の意味
#条件1も条件2も真であれば真、それ以外は偽
#条件1 && 条件2

t1 = true
t2 = true
f1 = false
puts t1 && t2
puts t1 && f1

#条件1 || 条件2は条件1または条件2の意味
#条件1か条件2のいずれかが真であれば真、両方偽であれば偽
#条件1 || 条件2

t1 = true
f1 = false
f2 = false
puts t1 || f1
puts f1 || f2

#&&と||を組み合わせて使用することもできる
#条件1 && 条件2 || 条件3 && 条件4
#条件1かつ条件2が真、または条件3かつ条件4が真なら真 == (条件1 && 条件2) || (条件3 && 条件4)

t1 = true
t2 = true
f1 = false
f2 = false
puts t1 && t2 || f1 && f2
puts (t1 && t2) || (f1 && f2)

#優先順位を変えたい場合は()を使用する
#条件1が真かつ、条件2または条件3が真かつ、条件4が真なら真 == 条件1 && (条件2 || 条件3) && 条件4

t1 = true
t2 = true
f1 = false
f2 = false
puts t1 && (t2 || f1) && f2

#!演算子を使用すると真偽値を反転することができる

t1 =true
f1 = false
puts !t1
puts !f1

#()と組み合わせることで()の中の真偽値を反転することができる
t1 =true
f1 = false
puts t1 && f1
puts !(t1 && f1)

#2.5.3
#条件を複数指定する場合はelsifを使用する。またelsifやelseは省略可能
# if 条件A
#   #条件Aが真だった場合の処理
# elsif 条件B
#   #条件Bが真だった場合の処理
# else 条件C
#   #条件Cが真だった場合の処理
# end

#例)与えられた数値が10より大きいかどうか

n = 11
if n > 10
  puts '10より大きい'
else
  puts '10以下'
end

#例)国によって挨拶を変えたい場合

country = 'italy'
if country == 'japan'
  puts 'こんにちは'
elsif country == 'us'
  puts 'Hello'
elsif country == 'italy'
  puts 'ciao'
else
  puts '???'
end

#「if文が戻り値を返す」という性質を利用して、if文の戻り値を変数に代入することもできる
country = 'italy'

greeting =
  if country == 'japan'
    'こんにちは'
  elsif country == 'us'
    'Hello'
  elsif country == 'italy'
    'ciao'
  else
    '???'
  end
  puts greeting

#Rubyのif文は修飾子として文の後ろに置くことができる

point = 7
day = 1
if day == 1 #1日であればポイント5倍
  point *= 5
end
puts point

#上のコードでif文を修飾子として書き直すと下のコードになる

point = 7
day = 1
point *= 5 if day == 1 #1日であればポイント5倍(if修飾子を利用)
puts point

#ifとelsifの後ろにthenを入れることができる
#thenを入れると条件式とその条件式が真だった場合の処理を1行に押し込めることができる(使用頻度は低い)

country = 'italy'
if country == 'japan' then puts 'こんにちは'
elsif country == 'us' then puts 'Hello'
elsif country == 'italy' then puts 'ciao'
else '???'
end