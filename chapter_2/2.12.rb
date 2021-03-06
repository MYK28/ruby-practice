#2.12.10
#putsメソッドは改行を加えて変数の内容やメソッドの戻り値をターミナルに出力する また、putsメソッド自身の戻り値はnilになる

#irb(main):001:0> puts 123
#123
#=> nil
#irb(main):002:0> puts 'abc'
#abc
#=> nil

#printメソッドは改行を加えない =>が改行されずに表示されている

#irb(main):003:0> print 123
#123 => nil
#irb(main):004:0> print 'abc'
#abc => nil

#pメソッドは改行を加えて出力する ただし、文字列を出力すると、その文字列がダブルクオートで囲まれている点がputsメソッドと異なる
#pメソッドは引数で渡されたオブジェクトそのものがメソッドの戻り値になる

#irb(main):005:0> p 123
#123
#=> 123
#irb(main):006:0> p 'abc'
#"abc"
#=> "abc"
