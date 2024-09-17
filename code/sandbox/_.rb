# find the first word in a string that is repeated
def first_repeating_word(string)
  words = string.split    # Splits the string into words
  seen = {}               # Hash to track seen words

  words.find do |word|     # Finds the first word that repeats
    if seen[word]          # If word is seen, return true
      true
    else
      seen[word] = true    # Otherwise, mark it as seen
      false
    end
  end
end

def f(s)
  a = s.split
  h = {}

  a.find do |w|
    if h[w]
      v
    else
      h[w] = true
      false
    end
  end
end

def f(s)
a=s.split
h={}
a.find do|w|
if h[w]
  true
else
h[w]=true
false
end
end
end

def f(s)
a=s.split
h={}
a.find{|w|
if h[w]
true
else
h[w]=true
false
end
}
end

def f(s)
h={}
s.split.find{|w|
if h[w]
true
else
h[w]=true
false
end
}
end

def f(s)
h={}
s.split.find{|w|
h[w]?true:(h[w]=true;false)
}
end

f=->s{
h={}
s.split.find{|w|
h[w]?true:(h[w]=true;false)
}
}

f=->s{h={};s.split.find{|w|h[w]?true:(h[w]=true;false)}}
f=->s{h={};s.split.find{|w|h[w]?1:(h[w]=1;false)}}
f=->s{h={};s.split.find{|w|h[w]?1:(h[w]=1;p)}}
f=->s{h={};s.split.find{h[_1]?1:(h[_1]=1;p)}}
f=->s{h={};s.split.find{h[_1]?1:!h[_1]=1}}
f=->s{h={};s.split.find{h[_1]||!h[_1]=1}}
f=->s{h={};s.split.find{!h[_1]=!h[_1]}}
f=->s,**h{s.split.find{!h[_1]=!h[_1]}}
f=->s,**h{s.split.find{!h[_1]^=1}}

f=->s,*a{s.split{a&a!=a||a<<_1};a[-1]}
f=->s,*a{s.split{a&a!=a||a<<s=_1};s}

def check(f)
  [
    ["dom kot pies okno żyrandol pies dom szafa", "pies"],
    ["", nil],
    ["kot", nil],
    ["kot kot", "kot"],
    ["a b c d", nil],
    ["a b c d c d a", "c"],
    ["aaa aa b b c", "b"],
    ["aa aaa b b c", "b"],
].find { |string, output| f.call(string) != output } || true
end


# find the longest word in a string

# ungolfed
def longest_word(string)
  words = string.split
  longest = nil
  words.each do |word|
    longest = word if longest.nil? || word.size > longest.size
  end
  longest
end

f=->s{s.split.max_by &:size}

f.call "The quick brown fox jumps over the lazy dog"

# checking if characters are uniq
->s{!s.chars.uniq!}
->s{/(.).*\1/!~s}

# palindrome or not
f=->a{puts a.map{_1.reverse==_1 ?_1:'-'}}
f=->a{puts a.map{_1[_1.reverse]||?-}}

# a**2*b**2*c**3*...
f=->a{a.map{_1**2}.reduce :*}
f=->a{v=1;a.map{v*=_1**2};v}
f=->a{a.reduce(1){_1*_2**2}}
f=->a{a.reduce(1,:*)**2}
f=->a{eval a.zip(a)*?*}
f=->a{eval(a*?*)**2}

# a*b**2*c**3*d**4...

# sum of all array numbers except divisible by 3
f=->a{a.sum-a.select{_1%3==0}.sum}
f=->a{a.sum{_1%3==0?0:_1}}
f=->a{a.sum{_1%3<1?0:_1}}
f=->a{a.sum{_1*-2[_1%3]}}

# PI Generator
# https://www.codingame.com/contribute/view/510671e0ff1a26c8bb4632dfd5ac7975ede65
puts"%.0d"%((Math::PI)*10**~-gets.to_i)
puts"%.0d".%Math::PI*10**~-gets.to_i
p eval('Math::PI*10**~-'+gets).to_i
p eval('Math::PI*10**~-'+`dd`).to_i
p (Math::PI*10**~-gets.to_i).to_i


# Weekly amount of Rain
# https://www.codingame.com/contribute/view/43509f185bc8c7e99d856b6e101a9aa354f29
p 2324-gets.sum*4
p`dd`.count(?R)*4


# Play with alphabet
# https://www.codingame.com/contribute/view/435422865ec105b9cdce67e6aa2cf66fc0fdb
$/=' ';n,d=$<.map &:to_i;l=0;n.times{$><<(97+l).chr;l=(l+d)%26}
$/=' ';n,d=$<.map &:to_i;l=-d;n.times{$><<(97+l=(l+d)%26).chr}
$/=' ';n,d=$<.map &:to_i;l=-d;n.times{putc 97+l=(l+d)%26}
$/=' ';n,d=$<.map &:to_i;l=d;n.times{putc 97-l=(l-d)%-26}
$/=' ';n,d=$<.map &:to_i;l=-d;n.times{putc 97+(l+=d)%26}
$/=' ';n,d=$<.map &:to_i;l=0;n.times{putc 97+l%26;l+=d}
n,d=gets.split;l=0;?1.upto(n){putc 97+l%26;l+=d.to_i}
n,d=gets.split;?1.upto(n){putc 97+~-$.%26;$.+=d.to_i}
n,d=gets.split;?1.upto(n){putc~-$.%26+97;$.+=d.to_i}
eval gets[/\d+/]+'.times{putc~-$.%26+97;$.+='+$'+?}
gets=~/ /;?1.upto($`){putc~-$.%26+97;$.+=$'.to_i}
eval gets[/\d+/]+".times{putc~-$.%26+97;$.+=#$'}"
gets=~/\d+/;eval";putc~-$.%26+97;$.+=#$'"*$&.to_i
?1.upto(gets[/\d+/]){putc~-$.%26+97;$.+=$'.to_i}


# Remove characters
# https://www.codingame.com/contribute/view/99444eaa0ea7c437d31dbaef5c70cf0ba9588
n=gets.to_i;n.times{s=gets.gsub(/./){$_.count($&)>2?'':$&};puts$/<s ?s:'EMPTY'}
n=gets.to_i;n.times{s=gets.gsub(/./){$&*7[$_.count$&]};puts$/<s ?s:'EMPTY'}
n=gets.to_i;n.times{puts gets.gsub(/./){$&*7[$_.count$&]}[/.+/]||:EMPTY}
gets;$<.map{|l|puts l.gsub(/./){$&*7[l.count$&]}[/.+/]||:EMPTY}
gets;puts$<.map{|l|l.gsub(/./){$&*7[l.count$&]}[/.+/]||:EMPTY}


# Return the first missing positive number
# https://www.codingame.com/contribute/view/101490df6a5ce7e69f2c55615c9b801dc13866
gets;a=gets.split.map(&:to_i);p ([*1..100]-a)[0]
gets;p ([*1..100]-gets.split.map(&:to_i))[0]
gets;puts ([*?1..'100']-gets.split)[0]
gets;$><<([*?1..'99']-gets.split)[0]
$><<([*?1..'99']-[*$<][1].split)[0]


# Trailing zeros
# https://www.codingame.com/contribute/view/9294496d56d18019aa6d539837e1733847cf1
p gets.to_i.to_s(2)[/0*$/].size
p ("%b"%gets)[/0*$/].size
p ("%b"%gets)[/0*$/]=~/$/
"%b"%gets=~/0*$/;p$&=~/$/


# Sum of Digits
# https://www.codingame.com/contribute/view/9541863b0b24c54484a05a47c5b23698b316a
gets;$><<gets.split.max_by{[_1.sum,-_1.to_i]}
gets;$><<gets.split.max_by{_1.sum+1r/_1.to_i}
gets;puts gets.split.min_by{[1.0/_1.sum,_1]}
gets;$><<gets.split.min_by{[1.0/_1.sum,_1]}
gets;$><<gets.split.min_by{[_1.sum**-1,_1]}
gets;$><<gets.split.min_by{[1r/_1.sum,_1]}


# Make 2+2=5
# https://codegolf.codidact.com/posts/283770/285706#answer-285706
->a,b{4[a]*4[b]+a+b}
->a,b{4[a][b-2]+a+b}
->a,b{4[a][b-a]+a+b}


# Multiply complex numbers.
# https://codegolf.codidact.com/posts/282455/285593#answer-285593
->e{e[/ /]=')*(';eval ?(+e+?)}
->e{e[/ /];eval"(#$`)*(#$')"}
->e{e.to_c*e.split[1].to_c}
->e{e[/ /];e.to_c*$'.to_c}
->e{e[/\S*/].to_c*$'.to_c}
->e{e.to_c*e[/ .*/].to_c}

# WEB APP DEV
# https://www.codingame.com/contribute/view/102117030df6d8e42bbefd8743df3631e2b1d2
puts:ĵéϷξхǯȻˊ[c=''<<gets.sum]?:frontend:"ɑϵƶʆ"[c]?'backend':'false'
$>.<<:ĵéϷξхǯȻˊ[c=''<<gets.sum]?:frontend:"ɑϵƶʆ"[c]?'backend':false
$>.<<:ĵéϷξхǯȻˊ[c=''<<gets.sum]?:frontend:"ɑϵƶʆ"[c]?:backend:!1


# What an odd encoding
# https://www.codingame.com/contribute/view/310364bdd4d97d51dba87e6bd5ecf7cc7c6c3
$>.<<gets.tr'0-9','#*'*5


# 3 Digit Password
# https://www.codingame.com/contribute/view/69777717937fd37c08326af40c7e55168647f
p eval ?(+gets.gsub(' ','+1)*(')+'+1)'
$/=' ';p$<.reduce(1){_1*-~_2.hex}
p eval'-~'+gets.gsub(' ','*-~')
eval'p -~'+gets.gsub(' ','*-~')
eval"p -~#{gets.gsub' ','*-~'}"
a=10;p eval`dd`.tr'0-9 ','1-9a*'
a=10;p eval`dd|tr "0-9 " 1-9a*`
a=10;p eval`dd|tr 0-9\\  1-9a*`

# https://www.codingame.com/ide/puzzle/chuck-norris-codesize
s=gets.chomp.bytes.map{'%07b'%_1}*'';$><<s.chars.chunk{_1}.map{[_1<?1?'00':0,?0*_2.size]}*' '
$><<(gets.chomp.bytes.map{'%07b'%_1}*'').chars.chunk{_1}.map{[_1<?1?'00':0,?0*_2.size]}*' '
