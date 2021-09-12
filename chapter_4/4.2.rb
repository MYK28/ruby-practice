#配列はArrayクラスのオブジェクトになっている
puts [].class

#数値の1,2,3が格納された配列を変数aに代入すると下記のようになる
a = [1, 2, 3]
puts a

#改行して書くこともできる
a = [
  1,
  2,
  3
]
puts a

#最後の要素に,がついても文法上エラーにはならない
a = [
  1,
  2,
  3,
]

puts a

#数値に限らず、どんなオブジェクトでも格納できる
a = ['apple', 'orange', 'melon']
puts a

#異なるデータ型を格納することもできる
a = [1, 'apple', 2, 'orange', 3, 'melon']
puts a

#配列の中に配列を含めることもできる
a = [[10, 20, 30], [40, 50, 60], [70, 80, 90]]
puts a

#配列の各要素を取得する場合は、[]と添字(数値)を使用する 添字は0から始まる
a = [1, 2, 3]
puts a[0]
puts a[1]
puts a[2]

#存在しない要素を指定してもエラーにはならず、nilが返る
a = [1, 2, 3]
puts a[100]

#sizeメソッド(エイリアスメソッドはlength)を使うと配列の長さ(要素の個数)を取得することができる
a = [1, 2, 3]
puts a.size
puts a.length