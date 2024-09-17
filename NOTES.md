* code golfing
  * any language can be used
  * but we will focus on ruby
  * performance, memory usage does not matter (almost)

* exploits
  * tests
    * flaky
    * weak
  * environment
  * random
  * builtin variables
  * files
  * shell, commands

* magic moments
  * levensthtein distance

* code golfing alphabet
  * uniq
```
a.uniq
a|[]
a|$*
a|a
```

https://www.youtube.com/watch?v=ccMafa0wlow
https://www.youtube.com/watch?v=4-3zLTg3GKk



# uniq characters
->x,y{(x+y).tr (x.chars&y.chars)*'',''}
->x,y{x.tr(y,'')+y.tr(x,'')}
->x,y{x.tr(y,x)+y.tr(x,y)}
->x,y{x.delete(y)+y.delete(x)}
->x,y{(x+y).delete (x.chars&y.chars)*''}
->x,y{x.delete(y)+y.delete(x)}
->x,y{eval %w[x y)+y x)]*'.delete('}
->x,y{(x+y).delete (x.chars&y.chars)*''}


->a{a.reduce :*}
->a{eval a*?*}
