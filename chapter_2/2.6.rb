#2.6.0
#Rubyはdefを使用してメソッドを定義する
#メソッド名はスネークケースで書く
#キャメルケースは使わない(エラーにはならないが、一般的ではない)
#アンダースコアでメソッド名を書き始める(アンダースコアで始まることは少ない)
#メソッド名に数字を入れる
#数字から始まるメソッド名は使えない(エラーになる)

def メソッド名(引数1, 引数2)
  #必要な処理
end

def add(a, b)
  a + b
end
puts add(1, 2)

#2.6.1
