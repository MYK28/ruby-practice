#2.2.1
#Rubyは全てがオブジェクト指向言語
#to_sメソッド：オブジェクトの内容を文字列化する

puts '1'.to_s #文字列
puts 1.to_s #数値
puts nil.to_s #nil
puts true.to_s #true
puts false.to_s #false
puts /\d+/.to_s #正規表現

#2.2.2
#オブジェクト.メソッド(引数1, 引数2, 引数3)
#オブジェクト.メソッド 引数1, 引数2, 引数3 引数のカッコは省略可
#オブジェクト.メソッド メソッドのみでもOK

puts 1.to_s() #数値の1を文字列に変換する(カッコあり)
puts 1.to_s #数値の1を文字列に変換する(カッコなし)
puts 10.to_s(16) #数値を16進数の文字列に変換する(カッコあり)
puts 10.to_s 16 #数値を16進数の文字列に変換する(カッコなし)

#2.2.8
#変数は宣言と代入を同時に行う
#変数を宣言するだけの構文はなく、何かしらの値を代入する必要がある
#変数名は小文字のスネークケース(単語をアンダースコア(_)で区切る方法)で書く キャメルケース(スペースを詰めて次の語を大文字で始める記法は使わない)

_special_prince = 200 #アンダースコアで変数名を書き始める(あまり使われない)
special_prince_2 = 300 #変数名に数字を入れる
特別価格 = 200 #変数名を漢字にする(一般的ではない)
#2_special_price = 300 #数字から始まる変数名は使えない(エラーになる)

#理解しづらく、不具合の原因にもなりやすいため使用を避けた方がいい例

#同じ変数に文字列や数値を代入する(良いコードではないため注意)
x = 'Hello'
x = 123
x = 'Good-bye'
x = 456
puts x

#2つの値を同時に代入する
a, b = 1, 2
puts a; puts b

#右辺のガズが少ない場合はnilが入る
c, d = 10
puts c; puts d #dがnilになっている

#右辺の数が多い場合ははみ出した値が切り捨てられる
e, f = 100, 200, 300
puts e; puts f #300が切り捨てられている

#2つの変数に同じ値を代入する
a = b = 100
puts a; puts b
